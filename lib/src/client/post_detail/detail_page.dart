import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/data/posts/post_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../core/widget/custom_app_bar.dart';
import '../../../core/widget/custom_cached_network_image.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key, required this.post});

  final PostModel post;

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
          Builder(builder: (context) {
            final images = post.images ?? [];
            if (images.isEmpty) {
              return const SizedBox.shrink();
            }
            return SizedBox(
              height: 150,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 150,
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CustomCachedNetworkImage(
                        width: MediaQuery.sizeOf(context).width,
                        imageUrl: images[index],
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
            );
          }),
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
                              FilterChip(
                                label: Text(post.realEstateType ?? ''),
                                selected: true,
                                onSelected: (value) {},
                              ),
                            ],
                          ),
                          12.h,

                          /// type of service
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Type of service:'),
                              20.w,
                              FilterChip(
                                label: Text(post.serviceType ?? ''),
                                selected: true,
                                onSelected: (_) {},
                              ),
                            ],
                          ),
                          12.h,

                          /// texts
                          Text('Title  - ${post.title ?? ''}'),
                          12.h,
                          Text('Description  - ${post.description ?? 0}'),

                          Text('Area - ${post.area ?? 0} meter square'),
                          12.h,
                          Text('Region  - ${post.region ?? ''}'),
                          12.h,
                          Text('Address  - ${post.address ?? ''}'),
                          12.h,
                          Text('Number of rooms  - ${post.numberOfRooms ?? 0}'),
                          12.h,
                          Text('Floor number  - ${post.floorNumber ?? 0}'),
                          15.h,

                          Text('Owner: ${post.contactDetails ?? ''}'),

                          10.h,
                          ElevatedButton(
                            onPressed: () async {
                              final email =
                                  (post.contactDetails ?? '').split(' ').firstOrNull ?? '';

                              await launchUrlString(
                                  'mailto:$email?subject=Real%20Estate&body=Hello');
                            },
                            child: const Text('Contact owner'),
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
                                post.specialBenefits?.length ?? 0,
                                (index) {
                                  final benefit = post.specialBenefits?[index];
                                  return FilterChip(
                                    label: Text(benefit ?? ''),
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
                      Text('Price for sale: ${post.price ?? 0}\$'),
                      20.h,
                      Text('Rent price(monthly): ${post.rentPrice ?? 0}\$')
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
