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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_OgpEntityCopyWith<$Res> implements $OgpEntityCopyWith<$Res> {
  factory _$$_OgpEntityCopyWith(
          _$_OgpEntity value, $Res Function(_$_OgpEntity) then) =
      __$$_OgpEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? imageUrl});
}

/// @nodoc
class __$$_OgpEntityCopyWithImpl<$Res>
    extends _$OgpEntityCopyWithImpl<$Res, _$_OgpEntity>
    implements _$$_OgpEntityCopyWith<$Res> {
  __$$_OgpEntityCopyWithImpl(
      _$_OgpEntity _value, $Res Function(_$_OgpEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_OgpEntity(
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
class _$_OgpEntity implements _OgpEntity {
  const _$_OgpEntity({required this.title, required this.imageUrl});

  factory _$_OgpEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OgpEntityFromJson(json);

  @override
  final String title;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'OgpEntity(title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OgpEntity &&
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
  _$$_OgpEntityCopyWith<_$_OgpEntity> get copyWith =>
      __$$_OgpEntityCopyWithImpl<_$_OgpEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OgpEntityToJson(
      this,
    );
  }
}

abstract class _OgpEntity implements OgpEntity {
  const factory _OgpEntity(
      {required final String title,
      required final String? imageUrl}) = _$_OgpEntity;

  factory _OgpEntity.fromJson(Map<String, dynamic> json) =
      _$_OgpEntity.fromJson;

  @override
  String get title;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_OgpEntityCopyWith<_$_OgpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
