// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'adding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddingState _$AddingStateFromJson(Map<String, dynamic> json) {
  return _AddingState.fromJson(json);
}

/// @nodoc
mixin _$AddingState {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isPossibleToSave => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddingStateCopyWith<AddingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingStateCopyWith<$Res> {
  factory $AddingStateCopyWith(
          AddingState value, $Res Function(AddingState) then) =
      _$AddingStateCopyWithImpl<$Res>;
  $Res call({String url, String title, bool isPossibleToSave});
}

/// @nodoc
class _$AddingStateCopyWithImpl<$Res> implements $AddingStateCopyWith<$Res> {
  _$AddingStateCopyWithImpl(this._value, this._then);

  final AddingState _value;
  // ignore: unused_field
  final $Res Function(AddingState) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? isPossibleToSave = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isPossibleToSave: isPossibleToSave == freezed
          ? _value.isPossibleToSave
          : isPossibleToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddingStateCopyWith<$Res>
    implements $AddingStateCopyWith<$Res> {
  factory _$AddingStateCopyWith(
          _AddingState value, $Res Function(_AddingState) then) =
      __$AddingStateCopyWithImpl<$Res>;
  @override
  $Res call({String url, String title, bool isPossibleToSave});
}

/// @nodoc
class __$AddingStateCopyWithImpl<$Res> extends _$AddingStateCopyWithImpl<$Res>
    implements _$AddingStateCopyWith<$Res> {
  __$AddingStateCopyWithImpl(
      _AddingState _value, $Res Function(_AddingState) _then)
      : super(_value, (v) => _then(v as _AddingState));

  @override
  _AddingState get _value => super._value as _AddingState;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? isPossibleToSave = freezed,
  }) {
    return _then(_AddingState(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isPossibleToSave: isPossibleToSave == freezed
          ? _value.isPossibleToSave
          : isPossibleToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddingState implements _AddingState {
  const _$_AddingState(
      {required this.url, required this.title, required this.isPossibleToSave});

  factory _$_AddingState.fromJson(Map<String, dynamic> json) =>
      _$$_AddingStateFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final bool isPossibleToSave;

  @override
  String toString() {
    return 'AddingState(url: $url, title: $title, isPossibleToSave: $isPossibleToSave)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddingState &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.isPossibleToSave, isPossibleToSave));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isPossibleToSave));

  @JsonKey(ignore: true)
  @override
  _$AddingStateCopyWith<_AddingState> get copyWith =>
      __$AddingStateCopyWithImpl<_AddingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddingStateToJson(this);
  }
}

abstract class _AddingState implements AddingState {
  const factory _AddingState(
      {required final String url,
      required final String title,
      required final bool isPossibleToSave}) = _$_AddingState;

  factory _AddingState.fromJson(Map<String, dynamic> json) =
      _$_AddingState.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get isPossibleToSave => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddingStateCopyWith<_AddingState> get copyWith =>
      throw _privateConstructorUsedError;
}
