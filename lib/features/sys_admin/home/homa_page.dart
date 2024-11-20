import 'package:flutter/material.dart';

class SysAdminHomePage extends StatelessWidget {
  const SysAdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sys admin home page'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
