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
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) accept,
    required TResult Function(String id) reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? accept,
    TResult? Function(String id)? reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? accept,
    TResult Function(String id)? reject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Accept value) accept,
    required TResult Function(_Reject value) reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Accept value)? accept,
    TResult? Function(_Reject value)? reject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Accept value)? accept,
    TResult Function(_Reject value)? reject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckPostEventCopyWith<CheckPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPostEventCopyWith<$Res> {
  factory $CheckPostEventCopyWith(
          CheckPostEvent value, $Res Function(CheckPostEvent) then) =
      _$CheckPostEventCopyWithImpl<$Res, CheckPostEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$CheckPostEventCopyWithImpl<$Res, $Val extends CheckPostEvent>
    implements $CheckPostEventCopyWith<$Res> {
  _$CheckPostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptImplCopyWith<$Res>
    implements $CheckPostEventCopyWith<$Res> {
  factory _$$AcceptImplCopyWith(
          _$AcceptImpl value, $Res Function(_$AcceptImpl) then) =
      __$$AcceptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$AcceptImplCopyWithImpl<$Res>
    extends _$CheckPostEventCopyWithImpl<$Res, _$AcceptImpl>
    implements _$$AcceptImplCopyWith<$Res> {
  __$$AcceptImplCopyWithImpl(
      _$AcceptImpl _value, $Res Function(_$AcceptImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AcceptImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptImpl implements _Accept {
  const _$AcceptImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CheckPostEvent.accept(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptImplCopyWith<_$AcceptImpl> get copyWith =>
      __$$AcceptImplCopyWithImpl<_$AcceptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) accept,
    required TResult Function(String id) reject,
  }) {
    return accept(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? accept,
    TResult? Function(String id)? reject,
  }) {
    return accept?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? accept,
    TResult Function(String id)? reject,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Accept value) accept,
    required TResult Function(_Reject value) reject,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Accept value)? accept,
    TResult? Function(_Reject value)? reject,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Accept value)? accept,
    TResult Function(_Reject value)? reject,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }
}

abstract class _Accept implements CheckPostEvent {
  const factory _Accept(final String id) = _$AcceptImpl;

  @override
  String get id;

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptImplCopyWith<_$AcceptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectImplCopyWith<$Res>
    implements $CheckPostEventCopyWith<$Res> {
  factory _$$RejectImplCopyWith(
          _$RejectImpl value, $Res Function(_$RejectImpl) then) =
      __$$RejectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RejectImplCopyWithImpl<$Res>
    extends _$CheckPostEventCopyWithImpl<$Res, _$RejectImpl>
    implements _$$RejectImplCopyWith<$Res> {
  __$$RejectImplCopyWithImpl(
      _$RejectImpl _value, $Res Function(_$RejectImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RejectImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RejectImpl implements _Reject {
  const _$RejectImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CheckPostEvent.reject(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectImplCopyWith<_$RejectImpl> get copyWith =>
      __$$RejectImplCopyWithImpl<_$RejectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) accept,
    required TResult Function(String id) reject,
  }) {
    return reject(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? accept,
    TResult? Function(String id)? reject,
  }) {
    return reject?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? accept,
    TResult Function(String id)? reject,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Accept value) accept,
    required TResult Function(_Reject value) reject,
  }) {
    return reject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Accept value)? accept,
    TResult? Function(_Reject value)? reject,
  }) {
    return reject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Accept value)? accept,
    TResult Function(_Reject value)? reject,
    required TResult orElse(),
  }) {
    if (reject != null) {
      return reject(this);
    }
    return orElse();
  }
}

abstract class _Reject implements CheckPostEvent {
  const factory _Reject(final String id) = _$RejectImpl;

  @override
  String get id;

  /// Create a copy of CheckPostEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectImplCopyWith<_$RejectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckPostState {
  FormzStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of CheckPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CheckPostState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of CheckPostState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of CheckPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CheckPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPostStateImplCopyWith<_$CheckPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
