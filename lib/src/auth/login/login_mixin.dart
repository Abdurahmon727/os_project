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

  void listener(BuildContext context, LoginState state) {
    if (state.status.isSuccess) {
      context.showSuccessMessage('Logged in successfully 🎉');
    } else if (state.status.isFail) {
      context.showFailureMessage('Something went wrong 😞');
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
