// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShareState _$ShareStateFromJson(Map<String, dynamic> json) {
  return _ShareState.fromJson(json);
}

/// @nodoc
mixin _$ShareState {
  String? get url => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShareStateCopyWith<ShareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareStateCopyWith<$Res> {
  factory $ShareStateCopyWith(
          ShareState value, $Res Function(ShareState) then) =
      _$ShareStateCopyWithImpl<$Res, ShareState>;
  @useResult
  $Res call({String? url, bool? isSuccess});
}

/// @nodoc
class _$ShareStateCopyWithImpl<$Res, $Val extends ShareState>
    implements $ShareStateCopyWith<$Res> {
  _$ShareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareStateImplCopyWith<$Res>
    implements $ShareStateCopyWith<$Res> {
  factory _$$ShareStateImplCopyWith(
          _$ShareStateImpl value, $Res Function(_$ShareStateImpl) then) =
      __$$ShareStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, bool? isSuccess});
}

/// @nodoc
class __$$ShareStateImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareStateImpl>
    implements _$$ShareStateImplCopyWith<$Res> {
  __$$ShareStateImplCopyWithImpl(
      _$ShareStateImpl _value, $Res Function(_$ShareStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$ShareStateImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShareStateImpl implements _ShareState {
  const _$ShareStateImpl({required this.url, required this.isSuccess});

  factory _$ShareStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareStateImplFromJson(json);

  @override
  final String? url;
  @override
  final bool? isSuccess;

  @override
  String toString() {
    return 'ShareState(url: $url, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareStateImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareStateImplCopyWith<_$ShareStateImpl> get copyWith =>
      __$$ShareStateImplCopyWithImpl<_$ShareStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareStateImplToJson(
      this,
    );
  }
}

abstract class _ShareState implements ShareState {
  const factory _ShareState(
      {required final String? url,
      required final bool? isSuccess}) = _$ShareStateImpl;

  factory _ShareState.fromJson(Map<String, dynamic> json) =
      _$ShareStateImpl.fromJson;

  @override
  String? get url;
  @override
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ShareStateImplCopyWith<_$ShareStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
