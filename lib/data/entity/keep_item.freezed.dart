// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keep_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeepItem _$KeepItemFromJson(Map<String, dynamic> json) {
  return _KeepItemn.fromJson(json);
}

/// @nodoc
mixin _$KeepItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get targetUrl => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeepItemCopyWith<KeepItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeepItemCopyWith<$Res> {
  factory $KeepItemCopyWith(KeepItem value, $Res Function(KeepItem) then) =
      _$KeepItemCopyWithImpl<$Res, KeepItem>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? imageUrl,
      String targetUrl,
      DateTime createAt});
}

/// @nodoc
class _$KeepItemCopyWithImpl<$Res, $Val extends KeepItem>
    implements $KeepItemCopyWith<$Res> {
  _$KeepItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? targetUrl = null,
    Object? createAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetUrl: null == targetUrl
          ? _value.targetUrl
          : targetUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeepItemnImplCopyWith<$Res>
    implements $KeepItemCopyWith<$Res> {
  factory _$$KeepItemnImplCopyWith(
          _$KeepItemnImpl value, $Res Function(_$KeepItemnImpl) then) =
      __$$KeepItemnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? imageUrl,
      String targetUrl,
      DateTime createAt});
}

/// @nodoc
class __$$KeepItemnImplCopyWithImpl<$Res>
    extends _$KeepItemCopyWithImpl<$Res, _$KeepItemnImpl>
    implements _$$KeepItemnImplCopyWith<$Res> {
  __$$KeepItemnImplCopyWithImpl(
      _$KeepItemnImpl _value, $Res Function(_$KeepItemnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = freezed,
    Object? targetUrl = null,
    Object? createAt = null,
  }) {
    return _then(_$KeepItemnImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetUrl: null == targetUrl
          ? _value.targetUrl
          : targetUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeepItemnImpl implements _KeepItemn {
  const _$KeepItemnImpl(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.targetUrl,
      required this.createAt});

  factory _$KeepItemnImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeepItemnImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? imageUrl;
  @override
  final String targetUrl;
  @override
  final DateTime createAt;

  @override
  String toString() {
    return 'KeepItem(id: $id, title: $title, imageUrl: $imageUrl, targetUrl: $targetUrl, createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeepItemnImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.targetUrl, targetUrl) ||
                other.targetUrl == targetUrl) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, imageUrl, targetUrl, createAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeepItemnImplCopyWith<_$KeepItemnImpl> get copyWith =>
      __$$KeepItemnImplCopyWithImpl<_$KeepItemnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeepItemnImplToJson(
      this,
    );
  }
}

abstract class _KeepItemn implements KeepItem {
  const factory _KeepItemn(
      {required final int id,
      required final String title,
      required final String? imageUrl,
      required final String targetUrl,
      required final DateTime createAt}) = _$KeepItemnImpl;

  factory _KeepItemn.fromJson(Map<String, dynamic> json) =
      _$KeepItemnImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get imageUrl;
  @override
  String get targetUrl;
  @override
  DateTime get createAt;
  @override
  @JsonKey(ignore: true)
  _$$KeepItemnImplCopyWith<_$KeepItemnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
