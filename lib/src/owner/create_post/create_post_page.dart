import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';

import '../../../core/enums/formz_status.dart';
import '../../../core/widget/custom_app_bar.dart';
import 'bloc/create_post_bloc.dart';

part 'create_post_page_mixin.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> with CreatePostPageMixin {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreatePostBloc, CreatePostState>(
      listener: listener,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: 'Create Post'),
        ),
        body: ListView(
          children: [

            ///todo
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            6.h,
            ElevatedButton(
              onPressed: onTapPublish,
              child: BlocSelector<CreatePostBloc, CreatePostState, FormzStatus>(
                selector: (state) => state.status,
                builder: (context, status) {
                  if (status.isLoading) {
                    return const CupertinoActivityIndicator();
                  }
                  return const Text('Publish');
                },
              ),
            ),
            6.h
          ],
        ),
      ),
    );
  }
}
