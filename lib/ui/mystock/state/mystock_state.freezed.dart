// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mystock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MystockState _$MystockStateFromJson(Map<String, dynamic> json) {
  return _MystockState.fromJson(json);
}

/// @nodoc
mixin _$MystockState {
  List<KeepItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MystockStateCopyWith<MystockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MystockStateCopyWith<$Res> {
  factory $MystockStateCopyWith(
          MystockState value, $Res Function(MystockState) then) =
      _$MystockStateCopyWithImpl<$Res>;
  $Res call({List<KeepItem> items});
}

/// @nodoc
class _$MystockStateCopyWithImpl<$Res> implements $MystockStateCopyWith<$Res> {
  _$MystockStateCopyWithImpl(this._value, this._then);

  final MystockState _value;
  // ignore: unused_field
  final $Res Function(MystockState) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KeepItem>,
    ));
  }
}

/// @nodoc
abstract class _$MystockStateCopyWith<$Res>
    implements $MystockStateCopyWith<$Res> {
  factory _$MystockStateCopyWith(
          _MystockState value, $Res Function(_MystockState) then) =
      __$MystockStateCopyWithImpl<$Res>;
  @override
  $Res call({List<KeepItem> items});
}

/// @nodoc
class __$MystockStateCopyWithImpl<$Res> extends _$MystockStateCopyWithImpl<$Res>
    implements _$MystockStateCopyWith<$Res> {
  __$MystockStateCopyWithImpl(
      _MystockState _value, $Res Function(_MystockState) _then)
      : super(_value, (v) => _then(v as _MystockState));

  @override
  _MystockState get _value => super._value as _MystockState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_MystockState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KeepItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MystockState implements _MystockState {
  const _$_MystockState({required final List<KeepItem> items}) : _items = items;

  factory _$_MystockState.fromJson(Map<String, dynamic> json) =>
      _$$_MystockStateFromJson(json);

  final List<KeepItem> _items;
  @override
  List<KeepItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MystockState(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MystockState &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$MystockStateCopyWith<_MystockState> get copyWith =>
      __$MystockStateCopyWithImpl<_MystockState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MystockStateToJson(this);
  }
}

abstract class _MystockState implements MystockState {
  const factory _MystockState({required final List<KeepItem> items}) =
      _$_MystockState;

  factory _MystockState.fromJson(Map<String, dynamic> json) =
      _$_MystockState.fromJson;

  @override
  List<KeepItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MystockStateCopyWith<_MystockState> get copyWith =>
      throw _privateConstructorUsedError;
}
