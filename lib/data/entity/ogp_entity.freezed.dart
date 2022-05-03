// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$OgpEntityCopyWithImpl<$Res>;
  $Res call({String title, String? imageUrl});
}

/// @nodoc
class _$OgpEntityCopyWithImpl<$Res> implements $OgpEntityCopyWith<$Res> {
  _$OgpEntityCopyWithImpl(this._value, this._then);

  final OgpEntity _value;
  // ignore: unused_field
  final $Res Function(OgpEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OgpEntityCopyWith<$Res> implements $OgpEntityCopyWith<$Res> {
  factory _$OgpEntityCopyWith(
          _OgpEntity value, $Res Function(_OgpEntity) then) =
      __$OgpEntityCopyWithImpl<$Res>;
  @override
  $Res call({String title, String? imageUrl});
}

/// @nodoc
class __$OgpEntityCopyWithImpl<$Res> extends _$OgpEntityCopyWithImpl<$Res>
    implements _$OgpEntityCopyWith<$Res> {
  __$OgpEntityCopyWithImpl(_OgpEntity _value, $Res Function(_OgpEntity) _then)
      : super(_value, (v) => _then(v as _OgpEntity));

  @override
  _OgpEntity get _value => super._value as _OgpEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_OgpEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
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
            other is _OgpEntity &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$OgpEntityCopyWith<_OgpEntity> get copyWith =>
      __$OgpEntityCopyWithImpl<_OgpEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OgpEntityToJson(this);
  }
}

abstract class _OgpEntity implements OgpEntity {
  const factory _OgpEntity(
      {required final String title,
      required final String? imageUrl}) = _$_OgpEntity;

  factory _OgpEntity.fromJson(Map<String, dynamic> json) =
      _$_OgpEntity.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OgpEntityCopyWith<_OgpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
