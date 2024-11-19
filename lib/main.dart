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
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFF6961FF),
          onPrimary: Colors.white,
          secondary: Color(0xFF00B2B2),
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white,
          brightness: Brightness.light,
          error: Colors.red,
          onError: Colors.purple,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,

      title: 'UZBEKISTAN LAND/HOUSE/APARTMENT RENTAL & PURCHASE PORTAL',
    );
  }
}
