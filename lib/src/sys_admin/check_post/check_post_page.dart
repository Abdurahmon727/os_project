import 'package:flutter/material.dart';

import '../../../core/widget/custom_app_bar.dart';

class CheckPostPage extends StatelessWidget {
  const CheckPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(title: 'Check Post'),
      ),
      body: ListView(
        children: [
          ///todo
        ],
      ),
    );
  }
}
