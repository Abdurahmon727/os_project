import "dart:convert";

import "package:hive/hive.dart";
import "package:os_project/data/auth/profile_model.dart";

import "keys.dart";

final class LocalSource {
  LocalSource(this.box);

  final Box<dynamic> box;

  /// profile
  Future<void> setProfile(ProfileModel profile) async {
    await setCache(
      AppKeys.profile,
      jsonEncode(profile.toJson()),
    );
  }

  ProfileModel? get profile {
    final String profile = getCache(AppKeys.profile);
    if (profile.isNotEmpty) {
      return ProfileModel.fromJson(
        jsonDecode(profile),
      );
    }
    return null;
  }

  Future<void> setCache(String key, String value) async {
    await box.put(key, value);
  }

  String getCache(String key) => box.get(key, defaultValue: '');

  Future<void> clearAll() async {
    await box.clear();
  }
}
