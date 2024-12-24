part of 'create_post_page.dart';

mixin CreatePostPageMixin on State<CreatePostPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
      context.read<CreatePostBloc>().add(const CreatePostEvent.publish());
    }
  }
}
