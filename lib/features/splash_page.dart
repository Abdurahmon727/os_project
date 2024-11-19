import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:os_project/assets/assets.dart';

import '../router/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateNextPage();
  }

  Future<void> navigateNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) context.go(Routes.registration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppAnimations.loadingAnimation),
      ),
    );
  }
}
