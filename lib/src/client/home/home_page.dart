import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:os_project/assets/constants.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/core/widget/custom_app_bar.dart';
import 'package:os_project/src/client/home/widget/post_preview.dart';

import '../../../assets/assets.dart';
import '../../../core/enums/real_estate_type.dart';
import '../../../router/app_routes.dart';
import 'bloc/client_home_bloc.dart';

part 'home_page_mixin.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({super.key});

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> with ClientHomePageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: CustomAppBar(
          title: 'Client Home Page',
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: BlocBuilder<ClientHomeBloc, ClientHomeState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          const Text('House type:'),
                          10.w,
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: FilterChip(
                                      selected: state.selectedRealEstate == null,
                                      onSelected: (_) => clearType(),
                                      label: const Text('All'),
                                    ),
                                  ),
                                  ...List.generate(
                                    RealEstateType.values.length,
                                    (index) {
                                      final type = RealEstateType.values[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 4),
                                        child: FilterChip(
                                          selected: state.selectedRealEstate == type,
                                          onSelected: (_) => selectType(type),
                                          label: Text(type.name),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.h,
                      Row(
                        children: [
                          const Text('Regions:'),
                          10.w,
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                    child: FilterChip(
                                      selected: state.selectedRegion == null,
                                      onSelected: (_) => clearRegion(),
                                      label: const Text('All'),
                                    ),
                                  ),
                                  ...List.generate(
                                    Constants.regions.length,
                                    (index) {
                                      final region = Constants.regions[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 4),
                                        child: FilterChip(
                                          selected: state.selectedRegion == region,
                                          onSelected: (_) => selectRegion(region),
                                          label: Text(region),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      10.h,
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
      body: BlocConsumer<ClientHomeBloc, ClientHomeState>(
        listener: listener,
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
                  context.pushNamed(Routes.clientPostDetail);
                },
              );
            },
          );
        },
      ),
    );
  }
}
