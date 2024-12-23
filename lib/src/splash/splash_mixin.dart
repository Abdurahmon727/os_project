part of 'splash_page.dart';

mixin SplashMixin on State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateNextPage();
  }

  Future<void> navigateNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    final profile = localSource.profile;
    debugPrint('profile: $profile');

    ///
    if (profile == null) {
      if (mounted) context.go(Routes.registration);
      return;
    }

    ///

    if (profile.type.isOwner) {
      if (mounted) context.go(Routes.ownerHome);
    } else if (profile.type.isClient) {
      if (mounted) context.go(Routes.clientHome);
    } else if (profile.type.isSysAdmin) {
      if (mounted) context.go(Routes.sysAdminHome);
    }
  }
}
