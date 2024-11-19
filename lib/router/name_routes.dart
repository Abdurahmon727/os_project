part of "app_routes.dart";

sealed class Routes {
  Routes._();

  static const String splash = "/";

  /// Auth
  static const String registration = "/auth";
  static const String login = "/confirm-code";

  /// owner
  static const String ownerHome = "/owner-home";
  static const String createPost = "/create-post";

  /// client
  static const String clientHome = "/client-home";
  static const String clientPostDetail = "/client-post-detail";

  /// sys-admin
  static const String sysAdminHome = "/sys-admin-home";
  static const String checkPost = "/check-post";
}
