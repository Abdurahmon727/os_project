import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';

import '../../../core/widget/inputs/custom_text_field.dart';
import '../../../router/app_routes.dart';

part 'registration_mixin.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> with RegistrationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 3,
          vertical: 20,
        ),
        children: [
          CustomTextField(
            controller: idController,
            labelText: 'ID',
            hintText: 'Enter your ID',
          ),
          20.h,
          CustomTextField(
            controller: emailController,
            labelText: 'Email',
            hintText: 'Enter your email',
          ),
          20.h,
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
            controller: password1Controller,
            labelText: 'Password',
            hintText: 'Enter password',
          ),
          20.h,
          CustomTextField(
            controller: password2Controller,
            labelText: 'Password again',
            hintText: 'Repeat password',
          ),
          20.h,
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            children: [
              FilterChip(selected: false, onSelected: (value) {}, label: Text('Client')),
              FilterChip(selected: true, onSelected: (value) {}, label: Text('Owner')),
            ],
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          6.h,
          ElevatedButton(
            onPressed: () {
              //todo
            },
            child: const Text('Register'),
          ),
          10.h,
          TextButton(onPressed: () => context.pushNamed(Routes.login), child: Text('Login here')),
          6.h,
        ],
      ),
    );
  }
}
