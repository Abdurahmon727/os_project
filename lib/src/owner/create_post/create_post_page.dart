import 'package:flutter/material.dart';

import '../../../core/widget/custom_app_bar.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(title: 'Create Post'),
      ),
      body: ListView(
        children: [
          ///todo
        ],
      ),
    );
  }
}
