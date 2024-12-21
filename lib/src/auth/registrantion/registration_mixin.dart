part of 'registration_page.dart';

mixin RegistrationMixin on State<RegistrationPage> {
  late final TextEditingController idController;
  late final TextEditingController emailController;
  late final TextEditingController fullNameController;
  late final TextEditingController addressController;
  late final TextEditingController password1Controller;
  late final TextEditingController password2Controller;
  bool isOwner = false;

  @override
  void initState() {
    idController = TextEditingController();
    emailController = TextEditingController();
    fullNameController = TextEditingController();
    addressController = TextEditingController();
    password1Controller = TextEditingController();
    password2Controller = TextEditingController();

    super.initState();
  }

  void listener(BuildContext context, RegistrationState state) {
    if (state.status.isSuccess) {
      context.showSuccessMessage('Registered successfully 🎉');
      context.go(Routes.clientHome);
    } else if (state.status.isFail) {
      context.showFailureMessage('Something went wrong 😞');
    }
  }

  @override
  void dispose() {
    idController.dispose();
    emailController.dispose();
    fullNameController.dispose();
    addressController.dispose();
    password1Controller.dispose();
    password2Controller.dispose();
    super.dispose();
  }
}
