import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:os_project/core/enums/formz_status.dart';

import '../../../assets/assets.dart';
import '../../../core/widget/custom_app_bar.dart';
import '../../../router/app_routes.dart';
import '../../client/home/widget/post_preview.dart';
import 'bloc/sys_admin_home_bloc.dart';

class SysAdminHomePage extends StatelessWidget {
  const SysAdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(title: 'Sys admin home page'),
      ),
      body: BlocBuilder<SysAdminHomeBloc, SysAdminHomeState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return Center(
              child: Lottie.asset(AppAnimations.loadingAnimation),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.75,
            ),
            itemCount: 20,
            itemBuilder: (context, index) => WPostPreview(
              onTap: () {
                context.pushNamed(Routes.checkPost);
              },
              image: 'https://picsum.photos/800/500',
              title: 'room new $index',
            ),
          );
        },
      ),
    );
  }
}
