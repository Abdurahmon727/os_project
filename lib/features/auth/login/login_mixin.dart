part of 'login_page.dart';

mixin LoginMixin on State<LoginPage> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  ProfileType profileType = ProfileType.client;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
