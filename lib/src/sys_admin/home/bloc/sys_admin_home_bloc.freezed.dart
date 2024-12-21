// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys_admin_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SysAdminHomeEvent {
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
abstract class $SysAdminHomeEventCopyWith<$Res> {
  factory $SysAdminHomeEventCopyWith(
          SysAdminHomeEvent value, $Res Function(SysAdminHomeEvent) then) =
      _$SysAdminHomeEventCopyWithImpl<$Res, SysAdminHomeEvent>;
}

/// @nodoc
class _$SysAdminHomeEventCopyWithImpl<$Res, $Val extends SysAdminHomeEvent>
    implements $SysAdminHomeEventCopyWith<$Res> {
  _$SysAdminHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SysAdminHomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SysAdminHomeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SysAdminHomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'SysAdminHomeEvent.init()';
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

abstract class _Init implements SysAdminHomeEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
mixin _$SysAdminHomeState {
  FormzStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of SysAdminHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SysAdminHomeStateCopyWith<SysAdminHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysAdminHomeStateCopyWith<$Res> {
  factory $SysAdminHomeStateCopyWith(
          SysAdminHomeState value, $Res Function(SysAdminHomeState) then) =
      _$SysAdminHomeStateCopyWithImpl<$Res, SysAdminHomeState>;
  @useResult
  $Res call({FormzStatus status, String message});
}

/// @nodoc
class _$SysAdminHomeStateCopyWithImpl<$Res, $Val extends SysAdminHomeState>
    implements $SysAdminHomeStateCopyWith<$Res> {
  _$SysAdminHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SysAdminHomeState
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
abstract class _$$SysAdminHomeStateImplCopyWith<$Res>
    implements $SysAdminHomeStateCopyWith<$Res> {
  factory _$$SysAdminHomeStateImplCopyWith(_$SysAdminHomeStateImpl value,
          $Res Function(_$SysAdminHomeStateImpl) then) =
      __$$SysAdminHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzStatus status, String message});
}

/// @nodoc
class __$$SysAdminHomeStateImplCopyWithImpl<$Res>
    extends _$SysAdminHomeStateCopyWithImpl<$Res, _$SysAdminHomeStateImpl>
    implements _$$SysAdminHomeStateImplCopyWith<$Res> {
  __$$SysAdminHomeStateImplCopyWithImpl(_$SysAdminHomeStateImpl _value,
      $Res Function(_$SysAdminHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SysAdminHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$SysAdminHomeStateImpl(
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

class _$SysAdminHomeStateImpl implements _SysAdminHomeState {
  const _$SysAdminHomeStateImpl(
      {this.status = FormzStatus.pure, this.message = ''});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SysAdminHomeState(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysAdminHomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of SysAdminHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SysAdminHomeStateImplCopyWith<_$SysAdminHomeStateImpl> get copyWith =>
      __$$SysAdminHomeStateImplCopyWithImpl<_$SysAdminHomeStateImpl>(
          this, _$identity);
}

abstract class _SysAdminHomeState implements SysAdminHomeState {
  const factory _SysAdminHomeState(
      {final FormzStatus status,
      final String message}) = _$SysAdminHomeStateImpl;

  @override
  FormzStatus get status;
  @override
  String get message;

  /// Create a copy of SysAdminHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SysAdminHomeStateImplCopyWith<_$SysAdminHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
