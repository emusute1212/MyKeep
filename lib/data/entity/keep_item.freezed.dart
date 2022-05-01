// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keep_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeepItem _$KeepItemFromJson(Map<String, dynamic> json) {
  return _KeepItemn.fromJson(json);
}

/// @nodoc
mixin _$KeepItem {
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
      _$KeepItemCopyWithImpl<$Res>;
  $Res call(
      {String title, String? imageUrl, String targetUrl, DateTime createAt});
}

/// @nodoc
class _$KeepItemCopyWithImpl<$Res> implements $KeepItemCopyWith<$Res> {
  _$KeepItemCopyWithImpl(this._value, this._then);

  final KeepItem _value;
  // ignore: unused_field
  final $Res Function(KeepItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? targetUrl = freezed,
    Object? createAt = freezed,
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
      targetUrl: targetUrl == freezed
          ? _value.targetUrl
          : targetUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$KeepItemnCopyWith<$Res> implements $KeepItemCopyWith<$Res> {
  factory _$KeepItemnCopyWith(
          _KeepItemn value, $Res Function(_KeepItemn) then) =
      __$KeepItemnCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String? imageUrl, String targetUrl, DateTime createAt});
}

/// @nodoc
class __$KeepItemnCopyWithImpl<$Res> extends _$KeepItemCopyWithImpl<$Res>
    implements _$KeepItemnCopyWith<$Res> {
  __$KeepItemnCopyWithImpl(_KeepItemn _value, $Res Function(_KeepItemn) _then)
      : super(_value, (v) => _then(v as _KeepItemn));

  @override
  _KeepItemn get _value => super._value as _KeepItemn;

  @override
  $Res call({
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? targetUrl = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_KeepItemn(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetUrl: targetUrl == freezed
          ? _value.targetUrl
          : targetUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeepItemn implements _KeepItemn {
  const _$_KeepItemn(
      {required this.title,
      required this.imageUrl,
      required this.targetUrl,
      required this.createAt});

  factory _$_KeepItemn.fromJson(Map<String, dynamic> json) =>
      _$$_KeepItemnFromJson(json);

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
    return 'KeepItem(title: $title, imageUrl: $imageUrl, targetUrl: $targetUrl, createAt: $createAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeepItemn &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.targetUrl, targetUrl) &&
            const DeepCollectionEquality().equals(other.createAt, createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(targetUrl),
      const DeepCollectionEquality().hash(createAt));

  @JsonKey(ignore: true)
  @override
  _$KeepItemnCopyWith<_KeepItemn> get copyWith =>
      __$KeepItemnCopyWithImpl<_KeepItemn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeepItemnToJson(this);
  }
}

abstract class _KeepItemn implements KeepItem {
  const factory _KeepItemn(
      {required final String title,
      required final String? imageUrl,
      required final String targetUrl,
      required final DateTime createAt}) = _$_KeepItemn;

  factory _KeepItemn.fromJson(Map<String, dynamic> json) =
      _$_KeepItemn.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String get targetUrl => throw _privateConstructorUsedError;
  @override
  DateTime get createAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KeepItemnCopyWith<_KeepItemn> get copyWith =>
      throw _privateConstructorUsedError;
}
