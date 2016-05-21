@JS('crypto')
library crypto;

import "package:js/js.dart";
import "../_vanilaJs.dart";

@JS('CredentialDetails')
class CredentialDetails{
 external String get pfx;
 external String get key;
 external String get passphrase;
 external String get cert;
 external dynamic get ca;
 external dynamic get crl;
 external String get ciphers;
}

@JS('Credentials')
class Credentials{
 external dynamic get context;
}

 external Credentials createCredentials(CredentialDetails details);
 external Hash createHash(String algorithm);
 external Hmac createHmac(String algorithm, String key);
// external Hmac createHmac(String algorithm, Buffer key);
@JS('Hash')
class Hash{
 external Hash update(dynamic data, [String input_encoding]);
 external Buffer digest(dynamic /*todo StringLiteralType 'buffer'*/ encoding);
// external dynamic digest(String encoding);
// external Buffer digest();
}

@JS('Hmac')
class Hmac{
 /*  extends NodeJS.ReadWriteStream */
 external Hmac update(dynamic data, [String input_encoding]);
 external Buffer digest(dynamic /*todo StringLiteralType 'buffer'*/ encoding);
// external dynamic digest(String encoding);
// external Buffer digest();
}

 external Cipher createCipher(String algorithm, dynamic password);
 external Cipher createCipheriv(String algorithm, dynamic key, dynamic iv);
@JS('Cipher')
class Cipher{
 /*  extends NodeJS.ReadWriteStream */
 external Buffer update(Buffer data);
// external Buffer update(String data, dynamic /*todoUnionType*/ input_encoding);
// external String update(Buffer data, dynamic input_encoding, dynamic /*todoUnionType*/ output_encoding);
// external String update(String data, dynamic /*todoUnionType*/ input_encoding, dynamic /*todoUnionType*/ output_encoding);
 external Buffer final();
// external String final(String output_encoding);
 external void setAutoPadding(bool auto_padding);
 external Buffer getAuthTag();
}

 external Decipher createDecipher(String algorithm, dynamic password);
 external Decipher createDecipheriv(String algorithm, dynamic key, dynamic iv);
@JS('Decipher')
class Decipher{
 /*  extends NodeJS.ReadWriteStream */
 external Buffer update(Buffer data);
// external Buffer update(String data, dynamic /*todoUnionType*/ input_encoding);
// external String update(Buffer data, dynamic input_encoding, dynamic /*todoUnionType*/ output_encoding);
// external String update(String data, dynamic /*todoUnionType*/ input_encoding, dynamic /*todoUnionType*/ output_encoding);
 external Buffer final();
// external String final(String output_encoding);
 external void setAutoPadding(bool auto_padding);
 external void setAuthTag(Buffer tag);
}

 external Signer createSign(String algorithm);
@JS('Signer')
class Signer{
 /*  extends NodeJS.WritableStream */
 external void update(dynamic data);
 external String sign(String private_key, String output_format);
}

 external Verify createVerify(String algorith);
@JS('Verify')
class Verify{
 /*  extends NodeJS.WritableStream */
 external void update(dynamic data);
 external bool verify(String object, String signature, [String signature_format]);
}

 external DiffieHellman createDiffieHellman(num prime_length);
// external DiffieHellman createDiffieHellman(num prime, [String encoding]);
@JS('DiffieHellman')
class DiffieHellman{
 external String generateKeys([String encoding]);
 external String computeSecret(String other_public_key, [String input_encoding, String output_encoding]);
 external String getPrime([String encoding]);
 external String getGenerator(String encoding);
 external String getPublicKey([String encoding]);
 external String getPrivateKey([String encoding]);
 external void setPublicKey(String public_key, [String encoding]);
 external void setPrivateKey(String public_key, [String encoding]);
}

 external DiffieHellman getDiffieHellman(String group_name);
 external void pbkdf2(dynamic /*todoUnionType*/ password, dynamic /*todoUnionType*/ salt, num iterations, num keylen,  dynamic callback(Error err, Buffer derivedKey));
// external void pbkdf2(dynamic /*todoUnionType*/ password, dynamic /*todoUnionType*/ salt, num iterations, num keylen, String digest,  dynamic callback(Error err, Buffer derivedKey));
 external Buffer pbkdf2Sync(dynamic /*todoUnionType*/ password, dynamic /*todoUnionType*/ salt, num iterations, num keylen);
// external Buffer pbkdf2Sync(dynamic /*todoUnionType*/ password, dynamic /*todoUnionType*/ salt, num iterations, num keylen, String digest);
 external Buffer randomBytes(num size);
// external void randomBytes(num size,  void callback(Error err, Buffer buf));
 external Buffer pseudoRandomBytes(num size);
// external void pseudoRandomBytes(num size,  void callback(Error err, Buffer buf));
@JS('RsaPublicKey')
class RsaPublicKey{
 external String get key;
 external dynamic get padding;
}

@JS('RsaPrivateKey')
class RsaPrivateKey{
 external String get key;
 external String get passphrase;
 external dynamic get padding;
}

 external Buffer publicEncrypt(dynamic /*todoUnionType*/ public_key, Buffer buffer);
 external Buffer privateDecrypt(dynamic /*todoUnionType*/ private_key, Buffer buffer);
