part of 'registration_page.dart';

mixin RegistrationMixin on State<RegistrationPage> {
  late final TextEditingController idController;
  late final TextEditingController emailController;
  late final TextEditingController fullNameController;
  late final TextEditingController addressController;
  late final TextEditingController password1Controller;
  late final TextEditingController password2Controller;
  bool isOwner = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
      context.pushNamed(Routes.login);
    } else if (state.status.isFailure) {
      context.showFailureMessage(state.message);
    }
  }

  void onRegisterTap() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      context.read<RegistrationBloc>().add(
            RegistrationEvent.register(
              id: idController.text,
              email: emailController.text,
              fullName: fullNameController.text,
              address: addressController.text,
              password: password1Controller.text,
              profileType: isOwner ? ProfileType.Owner : ProfileType.Client,
            ),
          );
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
