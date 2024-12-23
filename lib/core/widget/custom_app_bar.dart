import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/core/extensions/string_extenions.dart';

import '../../router/app_routes.dart';
import '../../service/service_locator.dart';
import '../local_source/local_source.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.bottom});

  final String title;

  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    final profile = sl<LocalSource>().profile;
    return AppBar(
      title: Text(title),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: context.colorScheme.secondary,
              child: Text((profile?.fullName ?? '').profileIndicator),
            ),
            6.w,
            Text(
              profile?.fullName ?? '',
              style: const TextStyle(color: Colors.white),
            ),
            6.w,
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text('Are you sure to logout?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('No'),
                      ),
                      TextButton(
                        onPressed: () async {
                          await sl<LocalSource>().clearAll();
                          if (context.mounted) {
                            Navigator.pop(context);
                            context.pushReplacementNamed(Routes.registration);
                          }
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.login),
            )
          ],
        )
      ],
      bottom: bottom,
    );
  }
}
