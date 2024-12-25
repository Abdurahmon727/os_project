part of 'check_post_bloc.dart';

@freezed
class CheckPostEvent with _$CheckPostEvent {
  const factory CheckPostEvent.accept(String id) = _Accept;

  const factory CheckPostEvent.reject(String id) = _Reject;
}
