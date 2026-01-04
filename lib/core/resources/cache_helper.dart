import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheHelper {
  static final storage = FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true)
  );

  /*
  * 1. get Token
  * 2. save Token
  * 3. delete Token
  * */

  static Future<String> getToken() async {
    return await storage.read(key: "token") ?? "";
  }

  static Future saveToken(String token) async {
    return await storage.write(key: "token", value: token);
  }

  static Future deleteToken(String token) async {
    return await storage.delete(key: "token");
  }
}