import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/enums/profile_type.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/core/extensions/string_extenions.dart';

import '../../../core/widget/inputs/custom_text_field.dart';
import '../../../router/app_routes.dart';
import 'bloc/registration_bloc.dart';

part 'registration_mixin.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> with RegistrationMixin {
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: listener,
      child: Scaffold(
        appBar: AppBar(title: const Text('Registration')),
        body: Form(
          key: formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 3,
              vertical: 20,
            ),
            children: [
              CustomTextField(
                controller: fullNameController,
                labelText: 'Full name',
                hintText: 'Enter your full name',
              ),
              20.h,
              CustomTextField(
                controller: addressController,
                labelText: 'Address',
                hintText: 'Enter your address',
              ),
              20.h,
              CustomTextField(
                controller: idController,
                labelText: 'ID',
                hintText: 'Enter your ID',
              ),
              20.h,
              CustomTextField(
                controller: emailController,
                labelText: 'Email*',
                hintText: 'Enter your email',
                validator: emailValidator,
              ),
              20.h,
              CustomTextField(
                controller: password1Controller,
                obscure: true,
                labelText: 'Password*',
                hintText: 'Enter password',
                validator: passwordValidator,
              ),
              20.h,
              CustomTextField(
                controller: password2Controller,
                obscure: true,
                labelText: 'Password again*',
                hintText: 'Repeat password',
                validator: (password2) {
                  if (password2 != password1Controller.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              20.h,
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                children: [
                  FilterChip(
                    selected: !isOwner,
                    onSelected: (value) {
                      if (value) {
                        isOwner = false;
                        setState(() {});
                      }
                    },
                    label: const Text('Client'),
                  ),
                  FilterChip(
                    selected: isOwner,
                    onSelected: (value) {
                      if (value) {
                        isOwner = true;
                        setState(() {});
                      }
                    },
                    label: const Text('Owner'),
                  ),
                ],
              ),
              20.h,
              ElevatedButton(
                onPressed: onRegisterTap,
                child: BlocSelector<RegistrationBloc, RegistrationState, FormzStatus>(
                  selector: (state) => state.status,
                  builder: (context, status) {
                    if (status.isLoading) {
                      return const CupertinoActivityIndicator();
                    }
                    return const Text('Register');
                  },
                ),
              ),
              10.h,
              TextButton(
                onPressed: () => context.pushNamed(Routes.login),
                child: const Text('Login here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
