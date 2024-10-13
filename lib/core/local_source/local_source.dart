import "package:hive/hive.dart";

import "keys.dart";

final class LocalSource {
  LocalSource(this.box);

  final Box<dynamic> box;

  bool get hasProfile => box.get(AppKeys.hasProfile, defaultValue: false);

  Future<void> setHasProfile({required bool value}) async {
    await box.put(AppKeys.hasProfile, value);
  }

  // Future<void> setAccessToken(String accessToken) async {
  //   await box.put(AppKeys.accessToken, accessToken);
  // }
  //
  // String get accessToken => box.get(AppKeys.accessToken, defaultValue: "");

  // Future<void> setPassword(String password) async {
  //   await box.put(AppKeys.password, password);
  // }
  //
  // String? get password => box.get(AppKeys.password);

  Future<void> setCache(String key, String value) async {
    await box.put(key, value);
  }

  String getCache(String key) => box.get(key, defaultValue: '');

  Future<void> clear() async {
    await box.clear();
  }
}
