import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/features/client/home/widget/post_preview.dart';

import '../../../assets/assets.dart';
import '../../../core/enums/real_estate_type.dart';
import 'bloc/client_home_bloc.dart';

class ClientHomePage extends StatelessWidget {
  const ClientHomePage({super.key});

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
                                    onSelected: (_) => context.read<ClientHomeBloc>().add(
                                          const ClientHomeEvent.selectRealEstate(
                                            type: null,
                                          ),
                                        ),
                                    label: Text('All'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: state.selectedRealEstate == RealEstateType.land,
                                    onSelected: (_) => context.read<ClientHomeBloc>().add(
                                          const ClientHomeEvent.selectRealEstate(
                                            type: RealEstateType.land,
                                          ),
                                        ),
                                    label: const Text('Land'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: state.selectedRealEstate == RealEstateType.house,
                                    onSelected: (_) => context.read<ClientHomeBloc>().add(
                                          const ClientHomeEvent.selectRealEstate(
                                            type: RealEstateType.house,
                                          ),
                                        ),
                                    label: Text('House'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: state.selectedRealEstate == RealEstateType.apartment,
                                    onSelected: (_) => context.read<ClientHomeBloc>().add(
                                          const ClientHomeEvent.selectRealEstate(
                                            type: RealEstateType.apartment,
                                          ),
                                        ),
                                    label: Text('Apartment'),
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
                              children: List.generate(
                                100,
                                (index) => Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    onSelected: (value) {},
                                    label: Text('Regions$index '),
                                  ),
                                ),
                              ),
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
