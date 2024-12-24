part of 'create_post_page.dart';

mixin CreatePostPageMixin on State<CreatePostPage> {
  void listener(BuildContext context, CreatePostState state) {
    if (state.status.isSuccess) {
      context.showSuccessMessage('Published successfully 🎉');
      context.pop(true);
    } else if (state.status.isFailure) {
      context.showFailureMessage(state.message);
    }
  }

  void onTapPublish() {
    context.read<CreatePostBloc>().add(const CreatePostEvent.publish());
  }
}
