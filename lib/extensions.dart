import 'dart:convert';

import 'package:encrypt/encrypt.dart';

String decryptAESECB(String ciphertext, String key) {
  final keyBytes = Key.fromUtf8(key).bytes;
  final iv = IV.fromLength(16);
  final encrypter = Encrypter(AES(Key(keyBytes), mode: AESMode.ecb));
  final decryptedBytes = encrypter.decryptBytes(
    Encrypted.fromBase64(ciphertext),
    iv: iv,
  );
  return utf8.decode(decryptedBytes);
}

String encryptAESECB(String plaintext, String key) {
  final keyBytes = Key.fromUtf8(key).bytes;
  final iv = IV.fromLength(16);
  final encrypter = Encrypter(AES(Key(keyBytes), mode: AESMode.ecb));
  final encrypted = encrypter.encrypt(
    plaintext,
    iv: iv,
  );
  return encrypted.base64;
}

