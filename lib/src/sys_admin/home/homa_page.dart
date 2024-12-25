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

          final posts = state.posts;
          if (posts.isEmpty) {
            return Center(
              child: Lottie.asset(AppAnimations.emptyAnimation),
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
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return WPostPreview(
                title: post.title ?? '',
                image: post.images?.firstOrNull ?? '',
                status: post.status ?? '',
                onTap: () {
                  context.pushNamed(Routes.checkPost, extra: post);
                },
              );
            },
          );
        },
      ),
    );
  }
}
