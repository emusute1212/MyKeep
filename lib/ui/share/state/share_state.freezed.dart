// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'share_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShareState _$ShareStateFromJson(Map<String, dynamic> json) {
  return _ShareState.fromJson(json);
}

/// @nodoc
mixin _$ShareState {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareStateCopyWith<ShareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareStateCopyWith<$Res> {
  factory $ShareStateCopyWith(
          ShareState value, $Res Function(ShareState) then) =
      _$ShareStateCopyWithImpl<$Res>;
  $Res call({String? url});
}

/// @nodoc
class _$ShareStateCopyWithImpl<$Res> implements $ShareStateCopyWith<$Res> {
  _$ShareStateCopyWithImpl(this._value, this._then);

  final ShareState _value;
  // ignore: unused_field
  final $Res Function(ShareState) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShareStateCopyWith<$Res> implements $ShareStateCopyWith<$Res> {
  factory _$ShareStateCopyWith(
          _ShareState value, $Res Function(_ShareState) then) =
      __$ShareStateCopyWithImpl<$Res>;
  @override
  $Res call({String? url});
}

/// @nodoc
class __$ShareStateCopyWithImpl<$Res> extends _$ShareStateCopyWithImpl<$Res>
    implements _$ShareStateCopyWith<$Res> {
  __$ShareStateCopyWithImpl(
      _ShareState _value, $Res Function(_ShareState) _then)
      : super(_value, (v) => _then(v as _ShareState));

  @override
  _ShareState get _value => super._value as _ShareState;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_ShareState(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShareState implements _ShareState {
  const _$_ShareState({required this.url});

  factory _$_ShareState.fromJson(Map<String, dynamic> json) =>
      _$$_ShareStateFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'ShareState(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShareState &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ShareStateCopyWith<_ShareState> get copyWith =>
      __$ShareStateCopyWithImpl<_ShareState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShareStateToJson(this);
  }
}

abstract class _ShareState implements ShareState {
  const factory _ShareState({required final String? url}) = _$_ShareState;

  factory _ShareState.fromJson(Map<String, dynamic> json) =
      _$_ShareState.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShareStateCopyWith<_ShareState> get copyWith =>
      throw _privateConstructorUsedError;
}
