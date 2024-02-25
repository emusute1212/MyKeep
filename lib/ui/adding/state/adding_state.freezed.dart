// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$AddingStateImplCopyWith<$Res>
    implements $AddingStateCopyWith<$Res> {
  factory _$$AddingStateImplCopyWith(
          _$AddingStateImpl value, $Res Function(_$AddingStateImpl) then) =
      __$$AddingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String title, bool isPossibleToSave});
}

/// @nodoc
class __$$AddingStateImplCopyWithImpl<$Res>
    extends _$AddingStateCopyWithImpl<$Res, _$AddingStateImpl>
    implements _$$AddingStateImplCopyWith<$Res> {
  __$$AddingStateImplCopyWithImpl(
      _$AddingStateImpl _value, $Res Function(_$AddingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? isPossibleToSave = null,
  }) {
    return _then(_$AddingStateImpl(
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
class _$AddingStateImpl implements _AddingState {
  const _$AddingStateImpl(
      {required this.url, required this.title, required this.isPossibleToSave});

  factory _$AddingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddingStateImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddingStateImpl &&
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
  _$$AddingStateImplCopyWith<_$AddingStateImpl> get copyWith =>
      __$$AddingStateImplCopyWithImpl<_$AddingStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddingStateImplToJson(
      this,
    );
  }
}

abstract class _AddingState implements AddingState {
  const factory _AddingState(
      {required final String url,
      required final String title,
      required final bool isPossibleToSave}) = _$AddingStateImpl;

  factory _AddingState.fromJson(Map<String, dynamic> json) =
      _$AddingStateImpl.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  bool get isPossibleToSave;
  @override
  @JsonKey(ignore: true)
  _$$AddingStateImplCopyWith<_$AddingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
