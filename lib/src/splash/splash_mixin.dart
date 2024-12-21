part of 'splash_page.dart';

mixin SplashMixin on State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateNextPage();
  }

  Future<void> navigateNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    if (localSource.hasProfile) {
      final profileType = localSource.profileType;
      if (profileType.isOwner) {
        if (mounted) context.go(Routes.ownerHome);
      } else if (profileType.isClient) {
        if (mounted) context.go(Routes.clientHome);
      } else if (profileType.isSysAdmin) {
        if (mounted) context.go(Routes.sysAdminHome);
      }
      if (mounted) context.go(Routes.registration);
    } else {
      if (mounted) context.go(Routes.registration);
    }
  }
}
