import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/theme/theme.dart';
import 'package:os_project/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'service_locator.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      /// router
      routerConfig: router,

      /// theme style
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,

      title: 'UZBEKISTAN LAND/HOUSE/APARTMENT RENTAL & PURCHASE PORTAL',
    );
  }
}
