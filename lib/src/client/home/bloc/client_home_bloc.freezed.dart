// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(RealEstateType? type) selectRealEstate,
    required TResult Function(String? region) selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(RealEstateType? type)? selectRealEstate,
    TResult? Function(String? region)? selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(RealEstateType? type)? selectRealEstate,
    TResult Function(String? region)? selectRegion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SelectRealEstate value) selectRealEstate,
    required TResult Function(_SelectRegion value) selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SelectRealEstate value)? selectRealEstate,
    TResult? Function(_SelectRegion value)? selectRegion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SelectRealEstate value)? selectRealEstate,
    TResult Function(_SelectRegion value)? selectRegion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientHomeEventCopyWith<$Res> {
  factory $ClientHomeEventCopyWith(
          ClientHomeEvent value, $Res Function(ClientHomeEvent) then) =
      _$ClientHomeEventCopyWithImpl<$Res, ClientHomeEvent>;
}

/// @nodoc
class _$ClientHomeEventCopyWithImpl<$Res, $Val extends ClientHomeEvent>
    implements $ClientHomeEventCopyWith<$Res> {
  _$ClientHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientHomeEvent
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
    extends _$ClientHomeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientHomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ClientHomeEvent.init()';
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
    required TResult Function(RealEstateType? type) selectRealEstate,
    required TResult Function(String? region) selectRegion,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(RealEstateType? type)? selectRealEstate,
    TResult? Function(String? region)? selectRegion,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(RealEstateType? type)? selectRealEstate,
    TResult Function(String? region)? selectRegion,
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
    required TResult Function(_SelectRealEstate value) selectRealEstate,
    required TResult Function(_SelectRegion value) selectRegion,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SelectRealEstate value)? selectRealEstate,
    TResult? Function(_SelectRegion value)? selectRegion,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SelectRealEstate value)? selectRealEstate,
    TResult Function(_SelectRegion value)? selectRegion,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ClientHomeEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$SelectRealEstateImplCopyWith<$Res> {
  factory _$$SelectRealEstateImplCopyWith(_$SelectRealEstateImpl value,
          $Res Function(_$SelectRealEstateImpl) then) =
      __$$SelectRealEstateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RealEstateType? type});
}

/// @nodoc
class __$$SelectRealEstateImplCopyWithImpl<$Res>
    extends _$ClientHomeEventCopyWithImpl<$Res, _$SelectRealEstateImpl>
    implements _$$SelectRealEstateImplCopyWith<$Res> {
  __$$SelectRealEstateImplCopyWithImpl(_$SelectRealEstateImpl _value,
      $Res Function(_$SelectRealEstateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$SelectRealEstateImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RealEstateType?,
    ));
  }
}

/// @nodoc

class _$SelectRealEstateImpl implements _SelectRealEstate {
  const _$SelectRealEstateImpl({this.type});

  @override
  final RealEstateType? type;

  @override
  String toString() {
    return 'ClientHomeEvent.selectRealEstate(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRealEstateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ClientHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRealEstateImplCopyWith<_$SelectRealEstateImpl> get copyWith =>
      __$$SelectRealEstateImplCopyWithImpl<_$SelectRealEstateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(RealEstateType? type) selectRealEstate,
    required TResult Function(String? region) selectRegion,
  }) {
    return selectRealEstate(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(RealEstateType? type)? selectRealEstate,
    TResult? Function(String? region)? selectRegion,
  }) {
    return selectRealEstate?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(RealEstateType? type)? selectRealEstate,
    TResult Function(String? region)? selectRegion,
    required TResult orElse(),
  }) {
    if (selectRealEstate != null) {
      return selectRealEstate(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SelectRealEstate value) selectRealEstate,
    required TResult Function(_SelectRegion value) selectRegion,
  }) {
    return selectRealEstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SelectRealEstate value)? selectRealEstate,
    TResult? Function(_SelectRegion value)? selectRegion,
  }) {
    return selectRealEstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SelectRealEstate value)? selectRealEstate,
    TResult Function(_SelectRegion value)? selectRegion,
    required TResult orElse(),
  }) {
    if (selectRealEstate != null) {
      return selectRealEstate(this);
    }
    return orElse();
  }
}

abstract class _SelectRealEstate implements ClientHomeEvent {
  const factory _SelectRealEstate({final RealEstateType? type}) =
      _$SelectRealEstateImpl;

  RealEstateType? get type;

  /// Create a copy of ClientHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRealEstateImplCopyWith<_$SelectRealEstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectRegionImplCopyWith<$Res> {
  factory _$$SelectRegionImplCopyWith(
          _$SelectRegionImpl value, $Res Function(_$SelectRegionImpl) then) =
      __$$SelectRegionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? region});
}

/// @nodoc
class __$$SelectRegionImplCopyWithImpl<$Res>
    extends _$ClientHomeEventCopyWithImpl<$Res, _$SelectRegionImpl>
    implements _$$SelectRegionImplCopyWith<$Res> {
  __$$SelectRegionImplCopyWithImpl(
      _$SelectRegionImpl _value, $Res Function(_$SelectRegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = freezed,
  }) {
    return _then(_$SelectRegionImpl(
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectRegionImpl implements _SelectRegion {
  const _$SelectRegionImpl({this.region});

  @override
  final String? region;

  @override
  String toString() {
    return 'ClientHomeEvent.selectRegion(region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRegionImpl &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hash(runtimeType, region);

  /// Create a copy of ClientHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRegionImplCopyWith<_$SelectRegionImpl> get copyWith =>
      __$$SelectRegionImplCopyWithImpl<_$SelectRegionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(RealEstateType? type) selectRealEstate,
    required TResult Function(String? region) selectRegion,
  }) {
    return selectRegion(region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(RealEstateType? type)? selectRealEstate,
    TResult? Function(String? region)? selectRegion,
  }) {
    return selectRegion?.call(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(RealEstateType? type)? selectRealEstate,
    TResult Function(String? region)? selectRegion,
    required TResult orElse(),
  }) {
    if (selectRegion != null) {
      return selectRegion(region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SelectRealEstate value) selectRealEstate,
    required TResult Function(_SelectRegion value) selectRegion,
  }) {
    return selectRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SelectRealEstate value)? selectRealEstate,
    TResult? Function(_SelectRegion value)? selectRegion,
  }) {
    return selectRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SelectRealEstate value)? selectRealEstate,
    TResult Function(_SelectRegion value)? selectRegion,
    required TResult orElse(),
  }) {
    if (selectRegion != null) {
      return selectRegion(this);
    }
    return orElse();
  }
}

abstract class _SelectRegion implements ClientHomeEvent {
  const factory _SelectRegion({final String? region}) = _$SelectRegionImpl;

  String? get region;

  /// Create a copy of ClientHomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRegionImplCopyWith<_$SelectRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientHomeState {
  /// content
  FormzStatus get status => throw _privateConstructorUsedError;
  List<String> get posts => throw _privateConstructorUsedError;

  /// selections
  RealEstateType? get selectedRealEstate => throw _privateConstructorUsedError;
  String? get selectedRegion => throw _privateConstructorUsedError;

  /// Create a copy of ClientHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientHomeStateCopyWith<ClientHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientHomeStateCopyWith<$Res> {
  factory $ClientHomeStateCopyWith(
          ClientHomeState value, $Res Function(ClientHomeState) then) =
      _$ClientHomeStateCopyWithImpl<$Res, ClientHomeState>;
  @useResult
  $Res call(
      {FormzStatus status,
      List<String> posts,
      RealEstateType? selectedRealEstate,
      String? selectedRegion});
}

/// @nodoc
class _$ClientHomeStateCopyWithImpl<$Res, $Val extends ClientHomeState>
    implements $ClientHomeStateCopyWith<$Res> {
  _$ClientHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = null,
    Object? selectedRealEstate = freezed,
    Object? selectedRegion = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedRealEstate: freezed == selectedRealEstate
          ? _value.selectedRealEstate
          : selectedRealEstate // ignore: cast_nullable_to_non_nullable
              as RealEstateType?,
      selectedRegion: freezed == selectedRegion
          ? _value.selectedRegion
          : selectedRegion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientHomeStateImplCopyWith<$Res>
    implements $ClientHomeStateCopyWith<$Res> {
  factory _$$ClientHomeStateImplCopyWith(_$ClientHomeStateImpl value,
          $Res Function(_$ClientHomeStateImpl) then) =
      __$$ClientHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      List<String> posts,
      RealEstateType? selectedRealEstate,
      String? selectedRegion});
}

/// @nodoc
class __$$ClientHomeStateImplCopyWithImpl<$Res>
    extends _$ClientHomeStateCopyWithImpl<$Res, _$ClientHomeStateImpl>
    implements _$$ClientHomeStateImplCopyWith<$Res> {
  __$$ClientHomeStateImplCopyWithImpl(
      _$ClientHomeStateImpl _value, $Res Function(_$ClientHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = null,
    Object? selectedRealEstate = freezed,
    Object? selectedRegion = freezed,
  }) {
    return _then(_$ClientHomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedRealEstate: freezed == selectedRealEstate
          ? _value.selectedRealEstate
          : selectedRealEstate // ignore: cast_nullable_to_non_nullable
              as RealEstateType?,
      selectedRegion: freezed == selectedRegion
          ? _value.selectedRegion
          : selectedRegion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClientHomeStateImpl implements _ClientHomeState {
  const _$ClientHomeStateImpl(
      {this.status = FormzStatus.pure,
      final List<String> posts = const [],
      this.selectedRealEstate = null,
      this.selectedRegion = null})
      : _posts = posts;

  /// content
  @override
  @JsonKey()
  final FormzStatus status;
  final List<String> _posts;
  @override
  @JsonKey()
  List<String> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  /// selections
  @override
  @JsonKey()
  final RealEstateType? selectedRealEstate;
  @override
  @JsonKey()
  final String? selectedRegion;

  @override
  String toString() {
    return 'ClientHomeState(status: $status, posts: $posts, selectedRealEstate: $selectedRealEstate, selectedRegion: $selectedRegion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientHomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.selectedRealEstate, selectedRealEstate) ||
                other.selectedRealEstate == selectedRealEstate) &&
            (identical(other.selectedRegion, selectedRegion) ||
                other.selectedRegion == selectedRegion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_posts),
      selectedRealEstate,
      selectedRegion);

  /// Create a copy of ClientHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientHomeStateImplCopyWith<_$ClientHomeStateImpl> get copyWith =>
      __$$ClientHomeStateImplCopyWithImpl<_$ClientHomeStateImpl>(
          this, _$identity);
}

abstract class _ClientHomeState implements ClientHomeState {
  const factory _ClientHomeState(
      {final FormzStatus status,
      final List<String> posts,
      final RealEstateType? selectedRealEstate,
      final String? selectedRegion}) = _$ClientHomeStateImpl;

  /// content
  @override
  FormzStatus get status;
  @override
  List<String> get posts;

  /// selections
  @override
  RealEstateType? get selectedRealEstate;
  @override
  String? get selectedRegion;

  /// Create a copy of ClientHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientHomeStateImplCopyWith<_$ClientHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
