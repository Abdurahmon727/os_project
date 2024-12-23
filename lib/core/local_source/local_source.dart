import "dart:convert";

import "package:hive/hive.dart";
import "package:os_project/data/auth/auth_response.dart";

import "keys.dart";

final class LocalSource {
  LocalSource(this.box);

  final Box<dynamic> box;

  // /// has profile
  // bool get hasProfile {
  //   final profile =
  //   return box.get(AppKeys.hasProfile, defaultValue: false);
  // }
  //
  // Future<void> setHasProfile({required bool value}) async {
  //   await box.put(AppKeys.hasProfile, value);
  // }

  /// profile
  Future<void> setProfile(AuthResponse profile) async {
    await setCache(
      AppKeys.profile,
      jsonEncode(profile.toJson()),
    );
  }

  AuthResponse? get profile {
    final String profile = getCache(AppKeys.profile);
    if (profile.isNotEmpty) {
      return AuthResponse.fromJson(
        jsonDecode(profile),
      );
    }
    return null;
  }

  /// profile type
  // Future<void> setProfileType({required ProfileType value}) async {
  //   await box.put(AppKeys.profileType, value.name);
  // }
  //
  // ProfileType? get profileType {
  //   final profileType = box.get(AppKeys.profileType, defaultValue: null) as String?;
  //   if (profileType == ProfileType.Owner.name) {
  //     return ProfileType.Owner;
  //   } else if (profileType == ProfileType.Client.name) {
  //     return ProfileType.Client;
  //   } else if (profileType == ProfileType.SysAdmin.name) {
  //     return ProfileType.SysAdmin;
  //   }
  //   return null;
  // }

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
