import "package:hive/hive.dart";
import "package:os_project/core/enums/profile_type.dart";

import "keys.dart";

final class LocalSource {
  LocalSource(this.box);

  final Box<dynamic> box;

  /// has profile
  bool get hasProfile => box.get(AppKeys.hasProfile, defaultValue: false);

  Future<void> setHasProfile({required bool value}) async {
    await box.put(AppKeys.hasProfile, value);
  }

  /// profile type
  Future<void> setProfileType({required ProfileType value}) async {
    await box.put(AppKeys.profileType, value.name);
  }

  ProfileType? get profileType {
    final profileType = box.get(AppKeys.profileType, defaultValue: null) as String?;
    if (profileType == ProfileType.owner.name) {
      return ProfileType.owner;
    } else if (profileType == ProfileType.client.name) {
      return ProfileType.client;
    } else if (profileType == ProfileType.sysAdmin.name) {
      return ProfileType.sysAdmin;
    }
    return null;
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

  Future<void> clearAll() async {
    await box.clear();
  }
}
