import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/core/extensions/string_extenions.dart';

import '../../../../core/widget/custom_cached_network_image.dart';

class WPostPreview extends StatelessWidget {
  const WPostPreview({
    super.key,
    this.onTap,
    this.image = '',
    this.title = '',
    this.status = '',
  });

  final VoidCallback? onTap;
  final String image;
  final String title;
  final String status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 4),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: CustomCachedNetworkImage(
                        width: MediaQuery.sizeOf(context).width,
                        imageUrl: image,
                        fit: BoxFit.cover,
                        placeholder: (_, __) => const Center(child: CupertinoActivityIndicator()),
                        errorWidget: (_, __, ___) => const Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      ),
                    ),
                  ),
                  8.h,
                  Text(title, maxLines: 1)
                ],
              ),
            ),
            if (status.isNotEmpty)
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: status.statusColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status.capitalizeFirstLetter,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

extension StatusColorExtension on String {
  Color get statusColor {
    switch (this) {
      case 'pending':
        return const Color(0xFFF4CA0F);
      case 'accepted':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      default:
        return Colors.blue;
    }
  }
}
