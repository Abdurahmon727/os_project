import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/extensions/size.dart';

import '../../../core/widget/custom_app_bar.dart';
import '../../../core/widget/custom_cached_network_image.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(title: 'client post detail page'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          SizedBox(
            height: 150,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 30,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 150,
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CustomCachedNetworkImage(
                      width: MediaQuery.sizeOf(context).width,
                      imageUrl: 'https://picsum.photos/300/150',
                      fit: BoxFit.cover,
                      placeholder: (_, __) => const Center(child: CupertinoActivityIndicator()),
                      errorWidget: (_, __, ___) => const Center(
                        child: CupertinoActivityIndicator(),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
            ),
          ),
          20.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// house type
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('House type:'),
                              20.w,
                              Expanded(
                                child: Wrap(
                                  spacing: 12,
                                  runSpacing: 12,
                                  children: [
                                    FilterChip(
                                      label: const Text('Land'),
                                      selected: false,
                                      onSelected: (value) {},
                                    ),
                                    FilterChip(
                                      label: const Text('House'),
                                      selected: false,
                                      onSelected: (value) {},
                                    ),
                                    FilterChip(
                                      label: const Text('Apartment'),
                                      selected: true,
                                      onSelected: (value) {},
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          12.h,

                          /// type of service
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Type of service:'),
                              20.w,
                              Expanded(
                                child: Wrap(
                                  spacing: 12,
                                  runSpacing: 12,
                                  children: [
                                    FilterChip(
                                      label: const Text('Rent'),
                                      selected: false,
                                      onSelected: (value) {},
                                    ),
                                    FilterChip(
                                      label: const Text('Sell'),
                                      selected: false,
                                      onSelected: (value) {},
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),

                          /// texts
                          const Text('Area - 10 meter square'),
                          8.h,
                          const Text('Region  - Samarqand'),
                          8.h,
                          const Text('Address  - Samarqand mahalla, 12-house'),
                          8.h,
                          const Text('Number of rooms  - 3'),
                          8.h,
                          const Text('Floor number  - 3'),
                          8.h,
                          const Text(
                              'Description  - New smart apartment with ai tech, everything can be used via mobile application'),
                          8.h,
                          const Text('Owner: John Mellio, +998 90 123 45 67'),

                          30.h,
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Contact'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Special benefits:'),
                          20.w,
                          Expanded(
                            child: Wrap(
                              spacing: 12,
                              runSpacing: 12,
                              children: List.generate(
                                12,
                                (index) {
                                  return FilterChip(
                                    label: Text('benefit $index'),
                                    selected: true,
                                    onSelected: (_) {},
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      20.h,
                      const Text('Price for sale: 10 000\$'),
                      20.h,
                      const Text('Rent price(monthly): 200\$')
                    ],
                  ),
                ),
              ],
            ),
          ),
          10.w,
        ],
      ),
    );
  }
}
