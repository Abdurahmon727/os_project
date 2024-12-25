import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/enums/profile_type.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';

import '../../../core/extensions/string_extenions.dart';
import '../../../core/widget/inputs/custom_text_field.dart';
import '../../../router/app_routes.dart';
import 'bloc/login_bloc.dart';

part 'login_mixin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: listener,
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Form(
          key: formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 3,
              vertical: 20,
            ),
            children: [
              CustomTextField(
                controller: emailController,
                labelText: 'Email',
                hintText: 'Enter your email',
                validator: emailValidator,
              ),
              20.h,
              CustomTextField(
                controller: passwordController,
                obscure: true,
                labelText: 'Password',
                hintText: 'Enter your password',
                validator: passwordValidator,
              ),
              20.h,
              // Wrap(
              //   alignment: WrapAlignment.center,
              //   spacing: 20,
              //   runSpacing: 10,
              //   children: [
              //     FilterChip(
              //       selected: profileType.isClient,
              //       onSelected: (value) {
              //         if (value) {
              //           profileType = ProfileType.Client;
              //           setState(() {});
              //         }
              //       },
              //       label: const Text('Client'),
              //     ),
              //     FilterChip(
              //       selected: profileType.isOwner,
              //       onSelected: (value) {
              //         if (value) {
              //           profileType = ProfileType.Owner;
              //           setState(() {});
              //         }
              //       },
              //       label: const Text('Owner'),
              //     ),
              //     FilterChip(
              //       selected: profileType.isSysAdmin,
              //       onSelected: (value) {
              //         if (value) {
              //           profileType = ProfileType.Sys_admin;
              //           setState(() {});
              //         }
              //       },
              //       label: const Text('Sys Admin'),
              //     ),
              //   ],
              // )
              6.h,
              ElevatedButton(
                onPressed: onTapLogin,
                child: BlocSelector<LoginBloc, LoginState, FormzStatus>(
                  selector: (state) => state.status,
                  builder: (context, status) {
                    if (status.isLoading) {
                      return const CupertinoActivityIndicator();
                    }
                    return const Text('Login');
                  },
                ),
              ),
              6.h
            ],
          ),
        ),
      ),
    );
  }
}
