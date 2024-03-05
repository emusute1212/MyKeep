// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ogp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OgpEntity _$OgpEntityFromJson(Map<String, dynamic> json) {
  return _OgpEntity.fromJson(json);
}

/// @nodoc
mixin _$OgpEntity {
  String get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OgpEntityCopyWith<OgpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OgpEntityCopyWith<$Res> {
  factory $OgpEntityCopyWith(OgpEntity value, $Res Function(OgpEntity) then) =
      _$OgpEntityCopyWithImpl<$Res, OgpEntity>;
  @useResult
  $Res call({String title, String? imageUrl});
}

/// @nodoc
class _$OgpEntityCopyWithImpl<$Res, $Val extends OgpEntity>
    implements $OgpEntityCopyWith<$Res> {
  _$OgpEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OgpEntityImplCopyWith<$Res>
    implements $OgpEntityCopyWith<$Res> {
  factory _$$OgpEntityImplCopyWith(
          _$OgpEntityImpl value, $Res Function(_$OgpEntityImpl) then) =
      __$$OgpEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? imageUrl});
}

/// @nodoc
class __$$OgpEntityImplCopyWithImpl<$Res>
    extends _$OgpEntityCopyWithImpl<$Res, _$OgpEntityImpl>
    implements _$$OgpEntityImplCopyWith<$Res> {
  __$$OgpEntityImplCopyWithImpl(
      _$OgpEntityImpl _value, $Res Function(_$OgpEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$OgpEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OgpEntityImpl implements _OgpEntity {
  const _$OgpEntityImpl({required this.title, required this.imageUrl});

  factory _$OgpEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OgpEntityImplFromJson(json);

  @override
  final String title;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'OgpEntity(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OgpEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OgpEntityImplCopyWith<_$OgpEntityImpl> get copyWith =>
      __$$OgpEntityImplCopyWithImpl<_$OgpEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OgpEntityImplToJson(
      this,
    );
  }
}

abstract class _OgpEntity implements OgpEntity {
  const factory _OgpEntity(
      {required final String title,
      required final String? imageUrl}) = _$OgpEntityImpl;

  factory _OgpEntity.fromJson(Map<String, dynamic> json) =
      _$OgpEntityImpl.fromJson;

  @override
  String get title;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$OgpEntityImplCopyWith<_$OgpEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
