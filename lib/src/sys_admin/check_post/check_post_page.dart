import 'package:flutter/material.dart';

class CheckPostPage extends StatelessWidget {
  const CheckPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sys-admin check post page'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
