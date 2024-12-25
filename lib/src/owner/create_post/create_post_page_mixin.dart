part of 'create_post_page.dart';

mixin CreatePostPageMixin on State<CreatePostPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final CreatePostBloc bloc;

  late final TextEditingController titleController;
  late final TextEditingController descriptionController;
  late final TextEditingController areaController;
  late final TextEditingController addressController;
  late final TextEditingController numberOfRoomsController;
  late final TextEditingController floorNumberController;
  late final TextEditingController contactDetailsController;
  late final TextEditingController priceController;
  late final TextEditingController rentPriceController;

  @override
  initState() {
    super.initState();
    bloc = context.read<CreatePostBloc>();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    areaController = TextEditingController();
    addressController = TextEditingController();
    numberOfRoomsController = TextEditingController();
    floorNumberController = TextEditingController();
    contactDetailsController = TextEditingController();
    priceController = TextEditingController();
    rentPriceController = TextEditingController();
  }

  void onSelectRealEstateType(RealEstateType type) {
    bloc.add(CreatePostEvent.setRealEstateType(type));
  }

  void onSelectTypeOfService(TypeOfService type) {
    bloc.add(CreatePostEvent.setTypeOfService(type));
  }

  void onSelectSpecialBenefit(String benefit) {
    bloc.add(CreatePostEvent.selectSpecialBenefit(benefit));
  }

  void listener(BuildContext context, CreatePostState state) {
    if (state.status.isSuccess) {
      context.showSuccessMessage('Published successfully 🎉');
      context.pop(true);
    } else if (state.status.isFailure) {
      context.showFailureMessage(state.message);
    }
  }

  void onTapPublish() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      final area = int.tryParse(areaController.text) ?? 0;
      final numberOfRooms = int.tryParse(numberOfRoomsController.text) ?? 0;
      final floorNumber = int.tryParse(floorNumberController.text) ?? 0;
      final price = int.tryParse(priceController.text) ?? 0;
      final rentPrice = int.tryParse(rentPriceController.text) ?? 0;

      context.read<CreatePostBloc>().add(
            CreatePostEvent.publish(
              title: titleController.text,
              description: descriptionController.text,
              area: area,
              address: addressController.text,
              numberOfRooms: numberOfRooms,
              floorNumber: floorNumber,
              contactDetails: contactDetailsController.text,
              price: price,
              rentPrice: rentPrice,
            ),
          );
    }
  }
}
