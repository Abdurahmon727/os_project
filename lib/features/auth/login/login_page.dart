import 'package:flutter/material.dart';
import 'package:os_project/core/extensions/size.dart';

import '../../../core/widget/inputs/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            labelText: 'Email',
            hintText: 'Enter your email',
          ),
          20.h,
          CustomTextField(
            labelText: 'Password',
            hintText: 'Enter your password',
          ),
          20.h,
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 10,
            children: [
              FilterChip(selected: false, onSelected: (value) {}, label: Text('Client')),
              FilterChip(selected: true, onSelected: (value) {}, label: Text('Owner')),
              FilterChip(selected: false, onSelected: (value) {}, label: Text('Sys Admin')),
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
