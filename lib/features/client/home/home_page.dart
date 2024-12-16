import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:os_project/assets/constants.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/features/client/home/widget/post_preview.dart';

import '../../../assets/assets.dart';
import '../../../core/enums/real_estate_type.dart';
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
      appBar: AppBar(
        title: const Text('Buy & Rent Easy'),
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: state.selectedRealEstate == RealEstateType.land,
                                    onSelected: (_) => selectType(RealEstateType.land),
                                    label: const Text('Land'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: state.selectedRealEstate == RealEstateType.house,
                                    onSelected: (_) => selectType(RealEstateType.house),
                                    label: const Text('House'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: state.selectedRealEstate == RealEstateType.apartment,
                                    onSelected: (_) => selectType(RealEstateType.apartment),
                                    label: const Text('Apartment'),
                                  ),
                                )
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
      body: BlocBuilder<ClientHomeBloc, ClientHomeState>(
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
                //todo
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
