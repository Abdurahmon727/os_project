import 'package:flutter/material.dart';
import 'package:os_project/core/enums/profile_type.dart';
import 'package:os_project/core/extensions/size.dart';

import '../../../core/widget/inputs/custom_text_field.dart';

part 'login_mixin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 3,
          vertical: 20,
        ),
        children: [
          CustomTextField(
            controller: emailController,
            labelText: 'Email',
            hintText: 'Enter your email',
          ),
          20.h,
          CustomTextField(
            controller: passwordController,
            obscure: true,
            labelText: 'Password',
            hintText: 'Enter your password',
          ),
          20.h,
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 10,
            children: [
              FilterChip(
                selected: profileType.isClient,
                onSelected: (value) {
                  if (value) {
                    profileType = ProfileType.client;
                    setState(() {});
                  }
                },
                label: const Text('Client'),
              ),
              FilterChip(
                selected: profileType.isOwner,
                onSelected: (value) {
                  if (value) {
                    profileType = ProfileType.owner;
                    setState(() {});
                  }
                },
                label: const Text('Owner'),
              ),
              FilterChip(
                selected: profileType.isSysAdmin,
                onSelected: (value) {
                  if (value) {
                    profileType = ProfileType.sysAdmin;
                    setState(() {});
                  }
                },
                label: const Text('Sys Admin'),
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
              //todo
            },
            child: const Text('Login'),
          ),
          6.h
        ],
      ),
    );
  }
}
