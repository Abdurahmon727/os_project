// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckPostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPostEventCopyWith<$Res> {
  factory $CheckPostEventCopyWith(
          CheckPostEvent value, $Res Function(CheckPostEvent) then) =
      _$CheckPostEventCopyWithImpl<$Res, CheckPostEvent>;
}

/// @nodoc
class _$CheckPostEventCopyWithImpl<$Res, $Val extends CheckPostEvent>
    implements $CheckPostEventCopyWith<$Res> {
  _$CheckPostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$CheckPostEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'CheckPostEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements CheckPostEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
mixin _$CheckPostState {
  FormzStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckPostStateCopyWith<CheckPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPostStateCopyWith<$Res> {
  factory $CheckPostStateCopyWith(
          CheckPostState value, $Res Function(CheckPostState) then) =
      _$CheckPostStateCopyWithImpl<$Res, CheckPostState>;
  @useResult
  $Res call({FormzStatus status, String message});
}

/// @nodoc
class _$CheckPostStateCopyWithImpl<$Res, $Val extends CheckPostState>
    implements $CheckPostStateCopyWith<$Res> {
  _$CheckPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckPostStateImplCopyWith<$Res>
    implements $CheckPostStateCopyWith<$Res> {
  factory _$$CheckPostStateImplCopyWith(_$CheckPostStateImpl value,
          $Res Function(_$CheckPostStateImpl) then) =
      __$$CheckPostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzStatus status, String message});
}

/// @nodoc
class __$$CheckPostStateImplCopyWithImpl<$Res>
    extends _$CheckPostStateCopyWithImpl<$Res, _$CheckPostStateImpl>
    implements _$$CheckPostStateImplCopyWith<$Res> {
  __$$CheckPostStateImplCopyWithImpl(
      _$CheckPostStateImpl _value, $Res Function(_$CheckPostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$CheckPostStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckPostStateImpl implements _CheckPostState {
  const _$CheckPostStateImpl(
      {this.status = FormzStatus.pure, this.message = ''});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'CheckPostState(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPostStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPostStateImplCopyWith<_$CheckPostStateImpl> get copyWith =>
      __$$CheckPostStateImplCopyWithImpl<_$CheckPostStateImpl>(
          this, _$identity);
}

abstract class _CheckPostState implements CheckPostState {
  const factory _CheckPostState(
      {final FormzStatus status, final String message}) = _$CheckPostStateImpl;

  @override
  FormzStatus get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CheckPostStateImplCopyWith<_$CheckPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
