import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:os_project/assets/constants.dart';
import 'package:os_project/core/enums/real_estate_type.dart';
import 'package:os_project/core/enums/type_of_service.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/core/extensions/string_extenions.dart';

import '../../../core/enums/formz_status.dart';
import '../../../core/widget/custom_app_bar.dart';
import '../../../core/widget/inputs/custom_text_field.dart';
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
        body: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        /// house type
                        Row(
                          children: [
                            const Text('House type:'),
                            10.w,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: RealEstateType.values.map((type) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: true,
                                    onSelected: (_) {},
                                    label: Text(type.name),
                                  ),
                                );
                              }).toList()),
                            ),
                          ],
                        ),
                        10.h,

                        /// service type
                        Row(
                          children: [
                            const Text('Type of Service:'),
                            10.w,
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: TypeOfService.values.map((type) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: FilterChip(
                                    selected: true,
                                    onSelected: (_) {},
                                    label: Text(type.name),
                                  ),
                                );
                              }).toList()),
                            ),
                          ],
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Title',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Description',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Area (meter sq.)',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Region',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Adress',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Number of rooms',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Floor number',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Email to contact',
                          validator: emailValidator,
                        ),
                      ],
                    ),
                  ),
                  30.w,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.h,
                        SizedBox(
                          height: 150,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height: 150,
                                  width: 200,
                                  child: ColoredBox(color: context.colorScheme.primary),
                                );
                              },
                              separatorBuilder: (context, index) => 20.w,
                              itemCount: 10),
                        ),
                        20.h,
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Add image'),
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Price',
                        ),
                        20.h,
                        CustomTextField(
                          controller: TextEditingController(),
                          labelText: 'Rent Price (monthly)',
                        ),
                        20.h,
                        const Text('Special Benefits'),
                        8.h,
                        Wrap(
                          spacing: 20,
                          runSpacing: 12,
                          children: Constants.specialBenefits.map((e) {
                            return FilterChip(
                              label: Text(e),
                              onSelected: (value) {},
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
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
