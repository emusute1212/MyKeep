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
      _$AddingStateCopyWithImpl<$Res, AddingState>;
  @useResult
  $Res call({String url, String title, bool isPossibleToSave});
}

/// @nodoc
class _$AddingStateCopyWithImpl<$Res, $Val extends AddingState>
    implements $AddingStateCopyWith<$Res> {
  _$AddingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? isPossibleToSave = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isPossibleToSave: null == isPossibleToSave
          ? _value.isPossibleToSave
          : isPossibleToSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddingStateCopyWith<$Res>
    implements $AddingStateCopyWith<$Res> {
  factory _$$_AddingStateCopyWith(
          _$_AddingState value, $Res Function(_$_AddingState) then) =
      __$$_AddingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String title, bool isPossibleToSave});
}

/// @nodoc
class __$$_AddingStateCopyWithImpl<$Res>
    extends _$AddingStateCopyWithImpl<$Res, _$_AddingState>
    implements _$$_AddingStateCopyWith<$Res> {
  __$$_AddingStateCopyWithImpl(
      _$_AddingState _value, $Res Function(_$_AddingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? isPossibleToSave = null,
  }) {
    return _then(_$_AddingState(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isPossibleToSave: null == isPossibleToSave
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
            other is _$_AddingState &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isPossibleToSave, isPossibleToSave) ||
                other.isPossibleToSave == isPossibleToSave));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, title, isPossibleToSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddingStateCopyWith<_$_AddingState> get copyWith =>
      __$$_AddingStateCopyWithImpl<_$_AddingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddingStateToJson(
      this,
    );
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
  String get url;
  @override
  String get title;
  @override
  bool get isPossibleToSave;
  @override
  @JsonKey(ignore: true)
  _$$_AddingStateCopyWith<_$_AddingState> get copyWith =>
      throw _privateConstructorUsedError;
}
