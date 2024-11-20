import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/enums/profile_type.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';

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
            obscure: true,
            labelText: 'Password',
            hintText: 'Enter password',
          ),
          20.h,
          CustomTextField(
            controller: password2Controller,
            obscure: true,
            labelText: 'Password again',
            hintText: 'Repeat password',
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
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          6.h,
          ElevatedButton(
            onPressed: () {
              context.read<RegistrationBloc>().add(
                    RegistrationEvent.register(
                      id: idController.text,
                      email: emailController.text,
                      fullName: fullNameController.text,
                      address: addressController.text,
                      password: password1Controller.text,
                      profileType: isOwner ? ProfileType.owner : ProfileType.client,
                    ),
                  );
            },
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
              onPressed: () => context.pushNamed(Routes.login), child: const Text('Login here')),
          6.h,
        ],
      ),
    );
  }
}
