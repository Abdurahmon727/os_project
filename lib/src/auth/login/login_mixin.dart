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

      /// navigate
      if (profileType.isOwner) {
        context.go(Routes.ownerHome);
      } else if (profileType.isClient) {
        context.go(Routes.clientHome);
      } else if (profileType.isSysAdmin) {
        context.go(Routes.sysAdminHome);
      }
    } else if (state.status.isFailure) {
      context.showFailureMessage('Something went wrong 😞');
    }
  }

  void onTapLogin() {
    context.read<LoginBloc>().add(
          LoginEvent.login(
            email: emailController.text,
            password: passwordController.text,
            profileType: profileType,
          ),
        );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
