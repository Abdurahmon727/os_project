part of 'registration_page.dart';

mixin RegistrationMixin on State<RegistrationPage> {
  late final TextEditingController idController;
  late final TextEditingController emailController;
  late final TextEditingController fullNameController;
  late final TextEditingController addressController;
  late final TextEditingController password1Controller;
  late final TextEditingController password2Controller;

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
