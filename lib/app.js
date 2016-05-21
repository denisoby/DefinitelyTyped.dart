///<reference path='node_modules/typescript/lib/typescript.d.ts' />
///<reference path='node.d.ts' />
"use strict";
/*
 todo
 + 1. remove unused code
 + 2. module -> library (remove "globals")
 + 3. split into files
 4. process properly duplicate functions
 5. imports
 6. extends
 7. cli arguments
 . gulp compilation
 . test at nodejs
 . docs
 . push to github
 . npm
 . complex types TypeLiterals
 */
var ts = require('typescript');
var fs = require('fs');
var path = require('path');
var nodeTypesMap = require('./nodeTypesMap.js');
function classesNamespaceStub(filePath) {
    return {
        filePath: filePath || '',
        classes: {}
    };
}
var globalResults = [];
var globalNamespaceEntries = { ".": classesNamespaceStub() };
var currentDartFile;
/*
will be useful in future when dependencies resolvement will work
declareInNamespace(globalNamespaceEntries["."], "Promise", null, "js.dart");
 */
function declareInNamespace(namespaceForExternal, name, instance, filePath) {
    var registeredClassInfo = namespaceForExternal.classes[name];
    if (!registeredClassInfo) {
        namespaceForExternal.classes[name] = instance || {};
        if (filePath) {
            namespaceForExternal.classes[name].filePath = filePath;
        }
    }
    else {
        var filePath = registeredClassInfo.filePath || namespaceForExternal.filePath;
        throw ("Class '" + (this.isLibrary ? this.libraryName + '.' : '') + name + "'") +
            ("is already registered in " + filePath + " ") +
            !this.isLibrary ? "and found at " + this.filePath : '';
    }
}
var DartFileInfo = (function () {
    function DartFileInfo(fileName, params) {
        var isRootFile = params.isRootFile, isLibrary = params.isLibrary, libraryName = params.libraryName;
        this.isRootFile = !!isRootFile;
        this.isLibrary = !!isLibrary;
        this.fileName = fileName;
        this.libraryName = this.isLibrary ? (libraryName || this.fileName) : "";
        this.imports = ["package:js/js.dart"];
        this.knownImportedTypes = [];
        this.dependencies = [];
        globalResults.push(this);
        if (this.isRootFile) {
            this.filePath = this.fileName + ".dart";
        }
        else {
            //todo make this conditionally, if necessary
            this.imports.push("../_vanilaJs.dart");
            var rootFile = globalResults[0];
            this.filePath = rootFile.fileName + "_libs/" + this.fileName + ".dart";
            rootFile.imports.push(this.filePath);
        }
        this.setNamespace();
    }
    DartFileInfo.prototype.getFullCode = function () {
        var fullCode = this.isLibrary ?
            ("@JS('" + this.libraryName + "')\n") +
                ("library " + this.libraryName + ";\n\n") : "";
        var importsString = '';
        for (var i = 0; i < this.imports.length; i++) {
            importsString += "import \"" + this.imports[i] + "\";\n";
        }
        fullCode += importsString + '\n';
        fullCode += this.text;
        return fullCode;
    };
    DartFileInfo.prototype.export = function (targetDirectory) {
        targetDirectory = targetDirectory ? targetDirectory + "/" : "";
        var directory = path.dirname(this.filePath);
        console.log("Exporting file: " + this.filePath);
        if (directory !== ".") {
            try {
                fs.mkdirSync(targetDirectory + directory);
            }
            catch (e) {
                if (e.code != "EEXIST") {
                    console.log(e);
                }
            }
        }
        var fullFilePath = targetDirectory + this.filePath;
        fs.writeFileSync(fullFilePath, this.getFullCode());
    };
    DartFileInfo.prototype.declareExternal = function (name, instance) {
        //if we are registering in global scope
        var filePath = this.isLibrary ? null : this.filePath;
        declareInNamespace(this.namespace, name, instance, filePath);
    };
    DartFileInfo.prototype.setNamespace = function () {
        if (this.isLibrary) {
            var registeredLibraryInfo = globalNamespaceEntries[this.libraryName];
            if (registeredLibraryInfo) {
                throw ("Library " + this.libraryName + " found in " + this.fileName + " ") +
                    ("already registered in " + registeredLibraryInfo.fileName);
            }
            else {
                var namespaceStub = classesNamespaceStub(this.filePath);
                this.namespace = globalNamespaceEntries[this.libraryName] = namespaceStub;
            }
        }
        else {
            this.namespace = globalNamespaceEntries["."];
        }
    };
    DartFileInfo.prototype.addImportForType = function (typeText, libName) {
        //todo 1. check imports of current module
        //todo 2. process not imported libraries
        var libNameInNamespace = libName || "."; //or global
        var className = libName ? typeText.substr(typeText.indexOf(".") + 1) : typeText;
        var _namespace;
        if (_namespace = globalNamespaceEntries[libNameInNamespace]) {
            var registeredClassInfo;
            if (registeredClassInfo = _namespace.classes[className]) {
                var filePath = registeredClassInfo.filePath || _namespace.filePath;
                if (!~currentDartFile.imports[filePath]) {
                    currentDartFile.imports.push(filePath);
                }
            }
            else {
            }
        }
        else {
            //throw
            console.warn("Library not found " + (libName && "'" + libName + "'" || "") +
                (" for '" + typeText + "'"));
        }
    };
    DartFileInfo.prototype.importDependencies = function () {
        for (var i = 0; i < this.dependencies.length; i++) {
            var dependencyType = this.dependencies[i];
            currentDartFile.addImportForType(dependencyType["typeText"], dependencyType["libName"]);
        }
    };
    return DartFileInfo;
}());
function main() {
    /*
     todo function main should be converted to class
     */
    var nodeAnnotator = {
        ModuleDeclaration: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = node.name.text || parentNodeName;
            console.log("ModuleDeclaration: " + contextName);
            currentDartFile = new DartFileInfo(contextName, { isLibrary: true });
            var contentAnnotations = processNodes(node, contextName);
            currentDartFile.importDependencies();
            currentDartFile.text = contentAnnotations;
            return '';
        },
        StringLiteral: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = node.text;
            var result = processNodes(node, contextName);
            return result;
        },
        ModuleBlock: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var methodsList = {};
            var resultCollector = createUniqueResultsCollector(methodsList);
            var contentAnnotations = processNodes(node, parentNodeName, resultCollector);
            var result = contentAnnotations;
            return result;
        },
        InterfaceDeclaration: function (params) {
            return nodeAnnotator.ClassDeclaration(params);
        },
        ClassDeclaration: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = node.name.text || parentNodeName;
            console.log("ClassDeclaration: " + contextName);
            var methodsList = {};
            var resultCollector = createUniqueResultsCollector(methodsList);
            currentDartFile.declareExternal(contextName);
            var contentAnnotations = processNodes(node, contextName, resultCollector);
            var result = ("@JS('" + contextName + "')\n") +
                ("class " + contextName + "{\n" + contentAnnotations + "}\n\n");
            return result;
        },
        ExportKeyword: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contentAnnotations = processNodes(node, "");
            return ''; //` external ${contentAnnotations}`;
        },
        Identifier: function (params) {
            return '';
            /*
             var {node, parentNode, parentNodeName, source, globalResults} = params;
             return processNodes(node, "", source, globalResults);
             */
        },
        PropertySignature: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = node.name.text;
            var result;
            var typeName = getTypeDartized(node);
            result = " external " + typeName + " get " + contextName + ";\n";
            return result;
        },
        HeritageClause: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            return " /* " + getNodeCodeText(node) + " */\n";
        },
        MethodSignature: function (params) {
            return nodeAnnotator.FunctionDeclaration(params);
        },
        MethodDeclaration: function (params) {
            return nodeAnnotator.FunctionDeclaration(params);
        },
        FunctionDeclaration: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = node.name && node.name.text || "";
            console.log("Function/MethodDeclaration: " + contextName);
            var returnType = getTypeDartized(node);
            var args = [], argsOptional = [];
            function resultCollector(_resulttext, _result, node) {
                switch (nodeTypesMap[node.kind]) {
                    case "Parameter":
                        //hack, to put name to the beginning
                        if (nodeTypesMap[node.type.kind] == "FunctionType") {
                            _result = _result.split(";")[0];
                        }
                        if (node.questionToken) {
                            argsOptional.push(_result);
                        }
                        else {
                            args.push(_result);
                        }
                        break;
                }
            }
            processNodes(node, contextName, resultCollector);
            if (argsOptional.length) {
                var argsOptionalList = '[' + argsOptional.join(", ") + ']';
                args.push(argsOptionalList);
            }
            var argsList = args.join(", ");
            var external;
            var newLine;
            var StaticKeywordKind = 113;
            var staticKeywork = node.modifiers && node.modifiers.indexOfStaticKeywordKind;
            if (nodeTypesMap[node.kind] == "FunctionType") {
                external = '';
                newLine = '';
                contextName = parentNode.name.text;
            }
            else {
                external = "external ";
                newLine = "\n";
            }
            return " " + external + returnType + " " + contextName + "(" + argsList + ");" + newLine;
        },
        VariableStatement: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = "";
            return processNodes(node, contextName);
        },
        VariableDeclarationList: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = "";
            return processNodes(node, contextName);
        },
        Parameter: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = "";
            return getTypeDartized(node) + " " + node.name.text;
        },
        DeclareKeyword: empty,
        EndOfFileToken: empty,
        Constructor: function (params) {
            var node = params.node, parentNode = params.parentNode, parentNodeName = params.parentNodeName;
            var contextName = "";
            return '/*todo Constructor*/\n';
        }
    };
    var newAnnotationsFound = {};
    var newKindsFound = {};
    var sourceFilePath;
    if (process.argv[2] == '--source' && process.argv[3]) {
        sourceFilePath = process.argv[3];
    }
    else {
        throw "No input file, expected `--source /path/to/file.d.ts`";
    }
    var source = String(fs.readFileSync(sourceFilePath));
    var sf = ts.createSourceFile(sourceFilePath, source, ts.ScriptTarget.Latest);
    /*
     var resultTree = {};
     getKindTree(sf.statements[0], resultTree);
     console.log("resultTree", JSON.stringify(resultTree, null, 2));
     */
    var fileName = path.basename(sourceFilePath);
    var tsExt = '.d.ts';
    var extensionStartPoint = fileName.length - tsExt.length;
    var fileNameWithoutDTS;
    var fileExtention = fileName.substr(extensionStartPoint);
    if (fileExtention == tsExt) {
        fileNameWithoutDTS = fileName.substr(0, extensionStartPoint);
    }
    else {
        throw "Input file name should be '[something].d.ts', now it is '" + fileExtention + "'";
    }
    currentDartFile = new DartFileInfo(fileNameWithoutDTS, { isRootFile: true });
    try {
        currentDartFile.text = processNodes(sf, "");
    }
    catch (e) {
        console.error("Failed processing source file: ", e);
    }
    var targetDirectory = "../generated";
    for (var i = 0; i < globalResults.length; i++) {
        var oneDartFile = globalResults[i];
        oneDartFile.export(targetDirectory);
    }
    /*
        //debug code - will write AST with comments to json file
        modifyKindTree(sf.statements, source);
        var astJSON = JSON.stringify(sf.statements, null, 2);
        var jsonDebugFile = globalResults[0].sourceFilePath + ".json";
        fs.writeFileSync(jsonDebugFile, astJSON);
    */
    //console.log(JSON.stringify(globalNamespaceEntries, null, 2));
    //console.log("Missing annotations:", JSON.stringify(newAnnotationsFound, null, 2));
    //console.log("Missing kinds:", JSON.stringify(newKindsFound, null, 2));
    function processNodes(parentNode, parentNodeName, resultCollector) {
        var result = '';
        if (!resultCollector) {
            resultCollector = function (_result) {
                return _result;
            };
        }
        var children = {};
        var childCount = 0;
        var prevNodeNamed = null;
        ts.forEachChild(parentNode, function (node) {
            childCount++;
            var nodeTypeName = nodeTypesMap[node.kind];
            var annotatorFn = nodeAnnotator[nodeTypeName];
            if (annotatorFn) {
                var _result = annotatorFn({ node: node, parentNode: parentNode, parentNodeName: parentNodeName });
                var _resultPostProcessed = resultCollector(_result && _result._text ? _result._text : _result, _result, node);
                if (typeof _resultPostProcessed == "string") {
                    result += _resultPostProcessed;
                }
            }
            else if (!newAnnotationsFound[nodeTypeName]) {
                //console.log("Next annotation: " + nodeTypeName, JSON.stringify(node, null, 2));
                newAnnotationsFound[nodeTypeName] = 1;
            }
            else {
                newAnnotationsFound[nodeTypeName]++;
            }
            prevNodeNamed = nodeTypeName;
        });
        return result;
    }
    function getNodeCodeText(node) {
        return source.substring(node.pos, node.end);
    }
    function getComplexType(node) {
        for (var i = 0; i < node.members.length; i++) {
            var type = node.members[i];
        }
    }
    function getSimpleType(typeNode) {
        var typeKind = typeNode.kind;
        return ts2dartDictionary[typeKind];
    }
    function getTypeDartized(node) {
        var typeNode = node.type || node;
        var typeKind = typeNode.kind;
        var typeText;
        switch (nodeTypesMap[typeKind]) {
            case "TypeLiteral":
                typeText = "dynamic /*todoTypeLiteral*/";
                break;
            case "UnionType":
                /*
                 todo
                 how to convert this to dart
                 value: string | string[]
                 */
                typeText = "dynamic /*todoUnionType*/";
                break;
            case "IntersectionType":
                /*
                 todo
                 how to convert this to dart
                 value: string | string[]
                 */
                typeText = "dynamic /*todoIntersectionType*/";
                break;
            case "TypeReference":
                var typeName = typeNode.typeName;
                typeText = typeName.text || "";
                if (typeText.length == 1) {
                    // simple way to detect:
                    // generic, not supported by dart2js?
                    return "dynamic /*generic*/ ";
                }
                else {
                    //todo remove this hack
                    var systemTypes = ["Function", "Array"];
                    var systemTypesAdapter = { "Array": "List" };
                    var foundInSystemTypes = ~systemTypes.indexOf(typeText);
                    if (foundInSystemTypes) {
                        if (systemTypesAdapter[typeText]) {
                            typeText = systemTypesAdapter[typeText];
                        }
                    }
                    else {
                        if (typeName.left && typeName.right) {
                            typeText = typeName.left.text + "." + typeName.right.text;
                        }
                        var libName = typeName.left && typeName.left.text || "";
                        var notCurrentLib = !libName || (libName != currentDartFile.libraryName);
                        var classNotFoundInCurrentLib = !currentDartFile.namespace.classes[typeText];
                        var notFoundInImports = !~currentDartFile.knownImportedTypes.indexOf(typeText);
                        if ((libName || classNotFoundInCurrentLib) && notFoundInImports
                            && notCurrentLib) {
                            currentDartFile.dependencies.push({ typeText: typeText, libName: libName });
                        }
                    }
                }
                break;
            case "TypeQuery":
                typeText = "dynamic /*todo TypeQuery " + typeNode.exprName.text + "*/";
                break;
            case "StringLiteralType_LastTypeNode":
                typeText = "dynamic /*todo StringLiteralType '" + typeNode.text + "'*/";
                break;
            case "ArrayType":
                var genericType = getTypeDartized(typeNode.elementType);
                typeText = "List<" + genericType + ">";
                break;
            case "FunctionType":
                //todo
                typeText = nodeAnnotator.FunctionDeclaration({ node: typeNode, parentNode: node });
                break;
            case "ThisType":
                //todo
                typeText = "/*todo type " + nodeTypesMap[typeKind] + "*/ dynamic";
                break;
            case "TupleType":
                //todo
                typeText = "/*todo type " + nodeTypesMap[typeKind] + "*/ dynamic";
                break;
            default:
                typeText = getSimpleType(typeNode);
        }
        if (!typeText) {
            console.warn(("Unknown type: " + nodeTypesMap[typeKind] + " (" + typeKind + "):\n") +
                ("code: " + getNodeCodeText(node) + "\n")); // + JSON.stringify(node, null, 2);
            typeText = "/*todo type " + nodeTypesMap[typeKind] + "*/ dynamic";
        }
        return typeText;
    }
    function createUniqueResultsCollector(methodsList) {
        //todo 1. select duplicate record with longest signature ?
        //todo 2. combine longest signature + dynamic
        return function resultCollector(_resulttext, _result, node) {
            switch (nodeTypesMap[node.kind]) {
                case "FunctionDeclaration":
                case "MethodDeclaration":
                case "MethodSignature":
                    if (methodsList[node.name.text]) {
                        _resulttext = "//" + _resulttext;
                    }
                    else {
                        methodsList[node.name.text] = true;
                    }
                    break;
            }
            return _resulttext;
        };
    }
}
exports.main = main;
function empty() {
    return '';
}
function modifyKindTree(parentNode, source) {
    for (var nodeName in parentNode) {
        if (parentNode.hasOwnProperty(nodeName)) {
            var node = parentNode[nodeName];
            if (node instanceof Object) {
                modifyKindTree(node, source);
            }
        }
    }
    ;
    if (parentNode.kind) {
        parentNode.kind = nodeTypesMap[parentNode.kind];
    }
    if ((parentNode.pos === 0 || parentNode.pos) && parentNode.end) {
        parentNode._code = source.substring(parentNode.pos, parentNode.end);
        delete parentNode.pos;
        delete parentNode.end;
    }
}
var ts2dartDictionary = {
    87: "FunctionKeyword",
    130: "String",
    128: "num",
    120: "bool",
    103: "void",
    117: "dynamic",
    157: "List"
};
main();
//# sourceMappingURL=app.js.map