import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:os_project/assets/assets.dart';
import 'package:os_project/core/enums/profile_type.dart';

import '../../router/app_routes.dart';
import '../../service/socket_service.dart';

part 'splash_mixin.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SplashMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppAnimations.loadingAnimation),
      ),
    );
  }
}
