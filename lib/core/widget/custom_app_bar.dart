import 'package:flutter/material.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: context.colorScheme.secondary,
              child: const Text('JM'),
            ),
            6.w,
            const Text(
              'John Mellio',
              style: TextStyle(color: Colors.white),
            ),
            6.w,
            IconButton(
              onPressed: () {
                //todo
              },
              icon: const Icon(Icons.login),
            )
          ],
        )
      ],
    );
  }
}
