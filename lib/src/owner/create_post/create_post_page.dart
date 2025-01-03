import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:os_project/assets/constants.dart';
import 'package:os_project/core/enums/real_estate_type.dart';
import 'package:os_project/core/enums/type_of_service.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';
import 'package:os_project/core/extensions/string_extenions.dart';

import '../../../core/enums/formz_status.dart';
import '../../../core/widget/custom_app_bar.dart';
import '../../../core/widget/custom_cached_network_image.dart';
import '../../../core/widget/dropdown/custom_dropdown.dart';
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
                        BlocSelector<CreatePostBloc, CreatePostState, RealEstateType?>(
                          selector: (state) => state.realEstateType,
                          builder: (context, selectedType) {
                            return Row(
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
                                        selected: selectedType == type,
                                        onSelected: (_) => onSelectRealEstateType(type),
                                        label: Text(type.name),
                                      ),
                                    );
                                  }).toList()),
                                ),
                              ],
                            );
                          },
                        ),
                        10.h,

                        /// service type
                        BlocSelector<CreatePostBloc, CreatePostState, TypeOfService?>(
                          selector: (state) => state.typeOfService,
                          builder: (context, selectedType) {
                            return Row(
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
                                        selected: selectedType == type,
                                        onSelected: (_) => onSelectTypeOfService(type),
                                        label: Text(type.name),
                                      ),
                                    );
                                  }).toList()),
                                ),
                              ],
                            );
                          },
                        ),
                        20.h,
                        CustomTextField(
                          controller: titleController,
                          labelText: 'Title',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: descriptionController,
                          labelText: 'Description',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: areaController,
                          labelText: 'Area (meter sq.)',
                          textInputType: TextInputType.number,
                          validator: emptyValidator,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        ),
                        20.h,
                        BlocSelector<CreatePostBloc, CreatePostState, String?>(
                          selector: (state) => state.region,
                          builder: (context, region) {
                            return CustomDropDown<String>(
                              label: 'Region',
                              hintText: '',
                              onChanged: (region) => setRegion(region!),
                              value: region,
                              items: List.generate(
                                Constants.regions.length,
                                (index) {
                                  final region = Constants.regions[index];
                                  return DropdownMenuItem(
                                    value: region,
                                    child: Text(region, style: context.textStyle.bodyLarge),
                                  );
                                },
                              ),
                            );
                          },
                        ),

                        20.h,
                        CustomTextField(
                          controller: addressController,
                          labelText: 'Address',
                          validator: emptyValidator,
                        ),
                        20.h,
                        CustomTextField(
                          controller: numberOfRoomsController,
                          labelText: 'Number of rooms',
                          // validator: emptyValidator,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        ),
                        20.h,
                        CustomTextField(
                          controller: floorNumberController,
                          labelText: 'Floor number',
                          // validator: emptyValidator,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        ),
                        20.h,
                        CustomTextField(
                          controller: contactDetailsController,
                          labelText: 'Contact information',
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
                        BlocSelector<CreatePostBloc, CreatePostState, List<String>>(
                          selector: (state) => state.images,
                          builder: (context, images) {
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
                                  final image = images[index];
                                  return SizedBox(
                                    height: 150,
                                    width: 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: CustomCachedNetworkImage(
                                        width: MediaQuery.sizeOf(context).width,
                                        imageUrl: image,
                                        fit: BoxFit.cover,
                                        placeholder: (_, __) =>
                                            const Center(child: CupertinoActivityIndicator()),
                                        errorWidget: (_, __, ___) => const Center(
                                          child: CupertinoActivityIndicator(),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (_, __) => 10.w,
                              ),
                            );
                          },
                        ),
                        20.h,
                        BlocSelector<CreatePostBloc, CreatePostState, FormzStatus>(
                          selector: (state) => state.imageStatus,
                          builder: (context, imageStatus) {
                            return ElevatedButton(
                              onPressed: onTapAddImage,
                              child: imageStatus.isLoading
                                  ? const CupertinoActivityIndicator()
                                  : const Text('Add image'),
                            );
                          },
                        ),
                        20.h,
                        BlocSelector<CreatePostBloc, CreatePostState, TypeOfService?>(
                          selector: (state) => state.typeOfService,
                          builder: (context, serviceType) {
                            if (serviceType.isRent) {
                              return CustomTextField(
                                controller: rentPriceController,
                                labelText: 'Rent Price (monthly)',
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              );
                            } else if (serviceType.isSell) {
                              return CustomTextField(
                                controller: priceController,
                                labelText: 'Price',
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              );
                            }

                            return const SizedBox.shrink();
                          },
                        ),
                        20.h,
                        const Text('Special Benefits'),
                        8.h,
                        BlocSelector<CreatePostBloc, CreatePostState, List<String>>(
                          selector: (state) => state.specialBenefits,
                          builder: (context, selectedBenefits) {
                            return Wrap(
                              spacing: 20,
                              runSpacing: 12,
                              children: Constants.specialBenefits.map((e) {
                                return FilterChip(
                                  label: Text(e),
                                  selected: selectedBenefits.contains(e),
                                  onSelected: (_) => onSelectSpecialBenefit(e),
                                );
                              }).toList(),
                            );
                          },
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
