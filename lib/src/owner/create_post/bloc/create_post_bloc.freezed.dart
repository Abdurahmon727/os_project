// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RealEstateType realEstateType) setRealEstateType,
    required TResult Function(TypeOfService type) setTypeOfService,
    required TResult Function(String benefit) selectSpecialBenefit,
    required TResult Function(String region) setRegion,
    required TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)
        publish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RealEstateType realEstateType)? setRealEstateType,
    TResult? Function(TypeOfService type)? setTypeOfService,
    TResult? Function(String benefit)? selectSpecialBenefit,
    TResult? Function(String region)? setRegion,
    TResult? Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RealEstateType realEstateType)? setRealEstateType,
    TResult Function(TypeOfService type)? setTypeOfService,
    TResult Function(String benefit)? selectSpecialBenefit,
    TResult Function(String region)? setRegion,
    TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRealEstateType value) setRealEstateType,
    required TResult Function(_SetTypeOfService value) setTypeOfService,
    required TResult Function(_SelectSpecialBenefit value) selectSpecialBenefit,
    required TResult Function(_SetRegion value) setRegion,
    required TResult Function(_Publish value) publish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRealEstateType value)? setRealEstateType,
    TResult? Function(_SetTypeOfService value)? setTypeOfService,
    TResult? Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult? Function(_SetRegion value)? setRegion,
    TResult? Function(_Publish value)? publish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRealEstateType value)? setRealEstateType,
    TResult Function(_SetTypeOfService value)? setTypeOfService,
    TResult Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult Function(_SetRegion value)? setRegion,
    TResult Function(_Publish value)? publish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(
          CreatePostEvent value, $Res Function(CreatePostEvent) then) =
      _$CreatePostEventCopyWithImpl<$Res, CreatePostEvent>;
}

/// @nodoc
class _$CreatePostEventCopyWithImpl<$Res, $Val extends CreatePostEvent>
    implements $CreatePostEventCopyWith<$Res> {
  _$CreatePostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetRealEstateTypeImplCopyWith<$Res> {
  factory _$$SetRealEstateTypeImplCopyWith(_$SetRealEstateTypeImpl value,
          $Res Function(_$SetRealEstateTypeImpl) then) =
      __$$SetRealEstateTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RealEstateType realEstateType});
}

/// @nodoc
class __$$SetRealEstateTypeImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$SetRealEstateTypeImpl>
    implements _$$SetRealEstateTypeImplCopyWith<$Res> {
  __$$SetRealEstateTypeImplCopyWithImpl(_$SetRealEstateTypeImpl _value,
      $Res Function(_$SetRealEstateTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? realEstateType = null,
  }) {
    return _then(_$SetRealEstateTypeImpl(
      null == realEstateType
          ? _value.realEstateType
          : realEstateType // ignore: cast_nullable_to_non_nullable
              as RealEstateType,
    ));
  }
}

/// @nodoc

class _$SetRealEstateTypeImpl implements _SetRealEstateType {
  const _$SetRealEstateTypeImpl(this.realEstateType);

  @override
  final RealEstateType realEstateType;

  @override
  String toString() {
    return 'CreatePostEvent.setRealEstateType(realEstateType: $realEstateType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRealEstateTypeImpl &&
            (identical(other.realEstateType, realEstateType) ||
                other.realEstateType == realEstateType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, realEstateType);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRealEstateTypeImplCopyWith<_$SetRealEstateTypeImpl> get copyWith =>
      __$$SetRealEstateTypeImplCopyWithImpl<_$SetRealEstateTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RealEstateType realEstateType) setRealEstateType,
    required TResult Function(TypeOfService type) setTypeOfService,
    required TResult Function(String benefit) selectSpecialBenefit,
    required TResult Function(String region) setRegion,
    required TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)
        publish,
  }) {
    return setRealEstateType(realEstateType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RealEstateType realEstateType)? setRealEstateType,
    TResult? Function(TypeOfService type)? setTypeOfService,
    TResult? Function(String benefit)? selectSpecialBenefit,
    TResult? Function(String region)? setRegion,
    TResult? Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
  }) {
    return setRealEstateType?.call(realEstateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RealEstateType realEstateType)? setRealEstateType,
    TResult Function(TypeOfService type)? setTypeOfService,
    TResult Function(String benefit)? selectSpecialBenefit,
    TResult Function(String region)? setRegion,
    TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
    required TResult orElse(),
  }) {
    if (setRealEstateType != null) {
      return setRealEstateType(realEstateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRealEstateType value) setRealEstateType,
    required TResult Function(_SetTypeOfService value) setTypeOfService,
    required TResult Function(_SelectSpecialBenefit value) selectSpecialBenefit,
    required TResult Function(_SetRegion value) setRegion,
    required TResult Function(_Publish value) publish,
  }) {
    return setRealEstateType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRealEstateType value)? setRealEstateType,
    TResult? Function(_SetTypeOfService value)? setTypeOfService,
    TResult? Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult? Function(_SetRegion value)? setRegion,
    TResult? Function(_Publish value)? publish,
  }) {
    return setRealEstateType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRealEstateType value)? setRealEstateType,
    TResult Function(_SetTypeOfService value)? setTypeOfService,
    TResult Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult Function(_SetRegion value)? setRegion,
    TResult Function(_Publish value)? publish,
    required TResult orElse(),
  }) {
    if (setRealEstateType != null) {
      return setRealEstateType(this);
    }
    return orElse();
  }
}

abstract class _SetRealEstateType implements CreatePostEvent {
  const factory _SetRealEstateType(final RealEstateType realEstateType) =
      _$SetRealEstateTypeImpl;

  RealEstateType get realEstateType;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetRealEstateTypeImplCopyWith<_$SetRealEstateTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTypeOfServiceImplCopyWith<$Res> {
  factory _$$SetTypeOfServiceImplCopyWith(_$SetTypeOfServiceImpl value,
          $Res Function(_$SetTypeOfServiceImpl) then) =
      __$$SetTypeOfServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TypeOfService type});
}

/// @nodoc
class __$$SetTypeOfServiceImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$SetTypeOfServiceImpl>
    implements _$$SetTypeOfServiceImplCopyWith<$Res> {
  __$$SetTypeOfServiceImplCopyWithImpl(_$SetTypeOfServiceImpl _value,
      $Res Function(_$SetTypeOfServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SetTypeOfServiceImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeOfService,
    ));
  }
}

/// @nodoc

class _$SetTypeOfServiceImpl implements _SetTypeOfService {
  const _$SetTypeOfServiceImpl(this.type);

  @override
  final TypeOfService type;

  @override
  String toString() {
    return 'CreatePostEvent.setTypeOfService(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTypeOfServiceImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTypeOfServiceImplCopyWith<_$SetTypeOfServiceImpl> get copyWith =>
      __$$SetTypeOfServiceImplCopyWithImpl<_$SetTypeOfServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RealEstateType realEstateType) setRealEstateType,
    required TResult Function(TypeOfService type) setTypeOfService,
    required TResult Function(String benefit) selectSpecialBenefit,
    required TResult Function(String region) setRegion,
    required TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)
        publish,
  }) {
    return setTypeOfService(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RealEstateType realEstateType)? setRealEstateType,
    TResult? Function(TypeOfService type)? setTypeOfService,
    TResult? Function(String benefit)? selectSpecialBenefit,
    TResult? Function(String region)? setRegion,
    TResult? Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
  }) {
    return setTypeOfService?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RealEstateType realEstateType)? setRealEstateType,
    TResult Function(TypeOfService type)? setTypeOfService,
    TResult Function(String benefit)? selectSpecialBenefit,
    TResult Function(String region)? setRegion,
    TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
    required TResult orElse(),
  }) {
    if (setTypeOfService != null) {
      return setTypeOfService(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRealEstateType value) setRealEstateType,
    required TResult Function(_SetTypeOfService value) setTypeOfService,
    required TResult Function(_SelectSpecialBenefit value) selectSpecialBenefit,
    required TResult Function(_SetRegion value) setRegion,
    required TResult Function(_Publish value) publish,
  }) {
    return setTypeOfService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRealEstateType value)? setRealEstateType,
    TResult? Function(_SetTypeOfService value)? setTypeOfService,
    TResult? Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult? Function(_SetRegion value)? setRegion,
    TResult? Function(_Publish value)? publish,
  }) {
    return setTypeOfService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRealEstateType value)? setRealEstateType,
    TResult Function(_SetTypeOfService value)? setTypeOfService,
    TResult Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult Function(_SetRegion value)? setRegion,
    TResult Function(_Publish value)? publish,
    required TResult orElse(),
  }) {
    if (setTypeOfService != null) {
      return setTypeOfService(this);
    }
    return orElse();
  }
}

abstract class _SetTypeOfService implements CreatePostEvent {
  const factory _SetTypeOfService(final TypeOfService type) =
      _$SetTypeOfServiceImpl;

  TypeOfService get type;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetTypeOfServiceImplCopyWith<_$SetTypeOfServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectSpecialBenefitImplCopyWith<$Res> {
  factory _$$SelectSpecialBenefitImplCopyWith(_$SelectSpecialBenefitImpl value,
          $Res Function(_$SelectSpecialBenefitImpl) then) =
      __$$SelectSpecialBenefitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String benefit});
}

/// @nodoc
class __$$SelectSpecialBenefitImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$SelectSpecialBenefitImpl>
    implements _$$SelectSpecialBenefitImplCopyWith<$Res> {
  __$$SelectSpecialBenefitImplCopyWithImpl(_$SelectSpecialBenefitImpl _value,
      $Res Function(_$SelectSpecialBenefitImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? benefit = null,
  }) {
    return _then(_$SelectSpecialBenefitImpl(
      null == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectSpecialBenefitImpl implements _SelectSpecialBenefit {
  const _$SelectSpecialBenefitImpl(this.benefit);

  @override
  final String benefit;

  @override
  String toString() {
    return 'CreatePostEvent.selectSpecialBenefit(benefit: $benefit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSpecialBenefitImpl &&
            (identical(other.benefit, benefit) || other.benefit == benefit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, benefit);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSpecialBenefitImplCopyWith<_$SelectSpecialBenefitImpl>
      get copyWith =>
          __$$SelectSpecialBenefitImplCopyWithImpl<_$SelectSpecialBenefitImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RealEstateType realEstateType) setRealEstateType,
    required TResult Function(TypeOfService type) setTypeOfService,
    required TResult Function(String benefit) selectSpecialBenefit,
    required TResult Function(String region) setRegion,
    required TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)
        publish,
  }) {
    return selectSpecialBenefit(benefit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RealEstateType realEstateType)? setRealEstateType,
    TResult? Function(TypeOfService type)? setTypeOfService,
    TResult? Function(String benefit)? selectSpecialBenefit,
    TResult? Function(String region)? setRegion,
    TResult? Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
  }) {
    return selectSpecialBenefit?.call(benefit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RealEstateType realEstateType)? setRealEstateType,
    TResult Function(TypeOfService type)? setTypeOfService,
    TResult Function(String benefit)? selectSpecialBenefit,
    TResult Function(String region)? setRegion,
    TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
    required TResult orElse(),
  }) {
    if (selectSpecialBenefit != null) {
      return selectSpecialBenefit(benefit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRealEstateType value) setRealEstateType,
    required TResult Function(_SetTypeOfService value) setTypeOfService,
    required TResult Function(_SelectSpecialBenefit value) selectSpecialBenefit,
    required TResult Function(_SetRegion value) setRegion,
    required TResult Function(_Publish value) publish,
  }) {
    return selectSpecialBenefit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRealEstateType value)? setRealEstateType,
    TResult? Function(_SetTypeOfService value)? setTypeOfService,
    TResult? Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult? Function(_SetRegion value)? setRegion,
    TResult? Function(_Publish value)? publish,
  }) {
    return selectSpecialBenefit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRealEstateType value)? setRealEstateType,
    TResult Function(_SetTypeOfService value)? setTypeOfService,
    TResult Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult Function(_SetRegion value)? setRegion,
    TResult Function(_Publish value)? publish,
    required TResult orElse(),
  }) {
    if (selectSpecialBenefit != null) {
      return selectSpecialBenefit(this);
    }
    return orElse();
  }
}

abstract class _SelectSpecialBenefit implements CreatePostEvent {
  const factory _SelectSpecialBenefit(final String benefit) =
      _$SelectSpecialBenefitImpl;

  String get benefit;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectSpecialBenefitImplCopyWith<_$SelectSpecialBenefitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetRegionImplCopyWith<$Res> {
  factory _$$SetRegionImplCopyWith(
          _$SetRegionImpl value, $Res Function(_$SetRegionImpl) then) =
      __$$SetRegionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String region});
}

/// @nodoc
class __$$SetRegionImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$SetRegionImpl>
    implements _$$SetRegionImplCopyWith<$Res> {
  __$$SetRegionImplCopyWithImpl(
      _$SetRegionImpl _value, $Res Function(_$SetRegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
  }) {
    return _then(_$SetRegionImpl(
      null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetRegionImpl implements _SetRegion {
  const _$SetRegionImpl(this.region);

  @override
  final String region;

  @override
  String toString() {
    return 'CreatePostEvent.setRegion(region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRegionImpl &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hash(runtimeType, region);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRegionImplCopyWith<_$SetRegionImpl> get copyWith =>
      __$$SetRegionImplCopyWithImpl<_$SetRegionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RealEstateType realEstateType) setRealEstateType,
    required TResult Function(TypeOfService type) setTypeOfService,
    required TResult Function(String benefit) selectSpecialBenefit,
    required TResult Function(String region) setRegion,
    required TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)
        publish,
  }) {
    return setRegion(region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RealEstateType realEstateType)? setRealEstateType,
    TResult? Function(TypeOfService type)? setTypeOfService,
    TResult? Function(String benefit)? selectSpecialBenefit,
    TResult? Function(String region)? setRegion,
    TResult? Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
  }) {
    return setRegion?.call(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RealEstateType realEstateType)? setRealEstateType,
    TResult Function(TypeOfService type)? setTypeOfService,
    TResult Function(String benefit)? selectSpecialBenefit,
    TResult Function(String region)? setRegion,
    TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
    required TResult orElse(),
  }) {
    if (setRegion != null) {
      return setRegion(region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRealEstateType value) setRealEstateType,
    required TResult Function(_SetTypeOfService value) setTypeOfService,
    required TResult Function(_SelectSpecialBenefit value) selectSpecialBenefit,
    required TResult Function(_SetRegion value) setRegion,
    required TResult Function(_Publish value) publish,
  }) {
    return setRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRealEstateType value)? setRealEstateType,
    TResult? Function(_SetTypeOfService value)? setTypeOfService,
    TResult? Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult? Function(_SetRegion value)? setRegion,
    TResult? Function(_Publish value)? publish,
  }) {
    return setRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRealEstateType value)? setRealEstateType,
    TResult Function(_SetTypeOfService value)? setTypeOfService,
    TResult Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult Function(_SetRegion value)? setRegion,
    TResult Function(_Publish value)? publish,
    required TResult orElse(),
  }) {
    if (setRegion != null) {
      return setRegion(this);
    }
    return orElse();
  }
}

abstract class _SetRegion implements CreatePostEvent {
  const factory _SetRegion(final String region) = _$SetRegionImpl;

  String get region;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetRegionImplCopyWith<_$SetRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublishImplCopyWith<$Res> {
  factory _$$PublishImplCopyWith(
          _$PublishImpl value, $Res Function(_$PublishImpl) then) =
      __$$PublishImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String description,
      int area,
      String address,
      int numberOfRooms,
      int floorNumber,
      String contactDetails,
      int price,
      int rentPrice});
}

/// @nodoc
class __$$PublishImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$PublishImpl>
    implements _$$PublishImplCopyWith<$Res> {
  __$$PublishImplCopyWithImpl(
      _$PublishImpl _value, $Res Function(_$PublishImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? area = null,
    Object? address = null,
    Object? numberOfRooms = null,
    Object? floorNumber = null,
    Object? contactDetails = null,
    Object? price = null,
    Object? rentPrice = null,
  }) {
    return _then(_$PublishImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRooms: null == numberOfRooms
          ? _value.numberOfRooms
          : numberOfRooms // ignore: cast_nullable_to_non_nullable
              as int,
      floorNumber: null == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rentPrice: null == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PublishImpl implements _Publish {
  const _$PublishImpl(
      {required this.title,
      required this.description,
      required this.area,
      required this.address,
      required this.numberOfRooms,
      required this.floorNumber,
      required this.contactDetails,
      required this.price,
      required this.rentPrice});

  @override
  final String title;
  @override
  final String description;
  @override
  final int area;
  @override
  final String address;
  @override
  final int numberOfRooms;
  @override
  final int floorNumber;
  @override
  final String contactDetails;
  @override
  final int price;
  @override
  final int rentPrice;

  @override
  String toString() {
    return 'CreatePostEvent.publish(title: $title, description: $description, area: $area, address: $address, numberOfRooms: $numberOfRooms, floorNumber: $floorNumber, contactDetails: $contactDetails, price: $price, rentPrice: $rentPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublishImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.numberOfRooms, numberOfRooms) ||
                other.numberOfRooms == numberOfRooms) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rentPrice, rentPrice) ||
                other.rentPrice == rentPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, area,
      address, numberOfRooms, floorNumber, contactDetails, price, rentPrice);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublishImplCopyWith<_$PublishImpl> get copyWith =>
      __$$PublishImplCopyWithImpl<_$PublishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RealEstateType realEstateType) setRealEstateType,
    required TResult Function(TypeOfService type) setTypeOfService,
    required TResult Function(String benefit) selectSpecialBenefit,
    required TResult Function(String region) setRegion,
    required TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)
        publish,
  }) {
    return publish(title, description, area, address, numberOfRooms,
        floorNumber, contactDetails, price, rentPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RealEstateType realEstateType)? setRealEstateType,
    TResult? Function(TypeOfService type)? setTypeOfService,
    TResult? Function(String benefit)? selectSpecialBenefit,
    TResult? Function(String region)? setRegion,
    TResult? Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
  }) {
    return publish?.call(title, description, area, address, numberOfRooms,
        floorNumber, contactDetails, price, rentPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RealEstateType realEstateType)? setRealEstateType,
    TResult Function(TypeOfService type)? setTypeOfService,
    TResult Function(String benefit)? selectSpecialBenefit,
    TResult Function(String region)? setRegion,
    TResult Function(
            String title,
            String description,
            int area,
            String address,
            int numberOfRooms,
            int floorNumber,
            String contactDetails,
            int price,
            int rentPrice)?
        publish,
    required TResult orElse(),
  }) {
    if (publish != null) {
      return publish(title, description, area, address, numberOfRooms,
          floorNumber, contactDetails, price, rentPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRealEstateType value) setRealEstateType,
    required TResult Function(_SetTypeOfService value) setTypeOfService,
    required TResult Function(_SelectSpecialBenefit value) selectSpecialBenefit,
    required TResult Function(_SetRegion value) setRegion,
    required TResult Function(_Publish value) publish,
  }) {
    return publish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRealEstateType value)? setRealEstateType,
    TResult? Function(_SetTypeOfService value)? setTypeOfService,
    TResult? Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult? Function(_SetRegion value)? setRegion,
    TResult? Function(_Publish value)? publish,
  }) {
    return publish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRealEstateType value)? setRealEstateType,
    TResult Function(_SetTypeOfService value)? setTypeOfService,
    TResult Function(_SelectSpecialBenefit value)? selectSpecialBenefit,
    TResult Function(_SetRegion value)? setRegion,
    TResult Function(_Publish value)? publish,
    required TResult orElse(),
  }) {
    if (publish != null) {
      return publish(this);
    }
    return orElse();
  }
}

abstract class _Publish implements CreatePostEvent {
  const factory _Publish(
      {required final String title,
      required final String description,
      required final int area,
      required final String address,
      required final int numberOfRooms,
      required final int floorNumber,
      required final String contactDetails,
      required final int price,
      required final int rentPrice}) = _$PublishImpl;

  String get title;
  String get description;
  int get area;
  String get address;
  int get numberOfRooms;
  int get floorNumber;
  String get contactDetails;
  int get price;
  int get rentPrice;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublishImplCopyWith<_$PublishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePostState {
  FormzStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// fields
  RealEstateType? get realEstateType => throw _privateConstructorUsedError;
  TypeOfService? get typeOfService => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  List<String> get specialBenefits => throw _privateConstructorUsedError;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePostStateCopyWith<CreatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateCopyWith<$Res> {
  factory $CreatePostStateCopyWith(
          CreatePostState value, $Res Function(CreatePostState) then) =
      _$CreatePostStateCopyWithImpl<$Res, CreatePostState>;
  @useResult
  $Res call(
      {FormzStatus status,
      String message,
      RealEstateType? realEstateType,
      TypeOfService? typeOfService,
      String? region,
      List<String> specialBenefits});
}

/// @nodoc
class _$CreatePostStateCopyWithImpl<$Res, $Val extends CreatePostState>
    implements $CreatePostStateCopyWith<$Res> {
  _$CreatePostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? realEstateType = freezed,
    Object? typeOfService = freezed,
    Object? region = freezed,
    Object? specialBenefits = null,
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
      realEstateType: freezed == realEstateType
          ? _value.realEstateType
          : realEstateType // ignore: cast_nullable_to_non_nullable
              as RealEstateType?,
      typeOfService: freezed == typeOfService
          ? _value.typeOfService
          : typeOfService // ignore: cast_nullable_to_non_nullable
              as TypeOfService?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      specialBenefits: null == specialBenefits
          ? _value.specialBenefits
          : specialBenefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostStateImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$CreatePostStateImplCopyWith(_$CreatePostStateImpl value,
          $Res Function(_$CreatePostStateImpl) then) =
      __$$CreatePostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      String message,
      RealEstateType? realEstateType,
      TypeOfService? typeOfService,
      String? region,
      List<String> specialBenefits});
}

/// @nodoc
class __$$CreatePostStateImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$CreatePostStateImpl>
    implements _$$CreatePostStateImplCopyWith<$Res> {
  __$$CreatePostStateImplCopyWithImpl(
      _$CreatePostStateImpl _value, $Res Function(_$CreatePostStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? realEstateType = freezed,
    Object? typeOfService = freezed,
    Object? region = freezed,
    Object? specialBenefits = null,
  }) {
    return _then(_$CreatePostStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      realEstateType: freezed == realEstateType
          ? _value.realEstateType
          : realEstateType // ignore: cast_nullable_to_non_nullable
              as RealEstateType?,
      typeOfService: freezed == typeOfService
          ? _value.typeOfService
          : typeOfService // ignore: cast_nullable_to_non_nullable
              as TypeOfService?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      specialBenefits: null == specialBenefits
          ? _value._specialBenefits
          : specialBenefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreatePostStateImpl implements _CreatePostState {
  const _$CreatePostStateImpl(
      {this.status = FormzStatus.pure,
      this.message = '',
      this.realEstateType = null,
      this.typeOfService = null,
      this.region = null,
      final List<String> specialBenefits = const <String>[]})
      : _specialBenefits = specialBenefits;

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final String message;

  /// fields
  @override
  @JsonKey()
  final RealEstateType? realEstateType;
  @override
  @JsonKey()
  final TypeOfService? typeOfService;
  @override
  @JsonKey()
  final String? region;
  final List<String> _specialBenefits;
  @override
  @JsonKey()
  List<String> get specialBenefits {
    if (_specialBenefits is EqualUnmodifiableListView) return _specialBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialBenefits);
  }

  @override
  String toString() {
    return 'CreatePostState(status: $status, message: $message, realEstateType: $realEstateType, typeOfService: $typeOfService, region: $region, specialBenefits: $specialBenefits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.realEstateType, realEstateType) ||
                other.realEstateType == realEstateType) &&
            (identical(other.typeOfService, typeOfService) ||
                other.typeOfService == typeOfService) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality()
                .equals(other._specialBenefits, _specialBenefits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      realEstateType,
      typeOfService,
      region,
      const DeepCollectionEquality().hash(_specialBenefits));

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostStateImplCopyWith<_$CreatePostStateImpl> get copyWith =>
      __$$CreatePostStateImplCopyWithImpl<_$CreatePostStateImpl>(
          this, _$identity);
}

abstract class _CreatePostState implements CreatePostState {
  const factory _CreatePostState(
      {final FormzStatus status,
      final String message,
      final RealEstateType? realEstateType,
      final TypeOfService? typeOfService,
      final String? region,
      final List<String> specialBenefits}) = _$CreatePostStateImpl;

  @override
  FormzStatus get status;
  @override
  String get message;

  /// fields
  @override
  RealEstateType? get realEstateType;
  @override
  TypeOfService? get typeOfService;
  @override
  String? get region;
  @override
  List<String> get specialBenefits;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePostStateImplCopyWith<_$CreatePostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
