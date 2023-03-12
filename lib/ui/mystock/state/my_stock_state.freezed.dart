// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_stock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyStockState _$MyStockStateFromJson(Map<String, dynamic> json) {
  return _MyStockState.fromJson(json);
}

/// @nodoc
mixin _$MyStockState {
  List<KeepItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyStockStateCopyWith<MyStockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStockStateCopyWith<$Res> {
  factory $MyStockStateCopyWith(
          MyStockState value, $Res Function(MyStockState) then) =
      _$MyStockStateCopyWithImpl<$Res, MyStockState>;
  @useResult
  $Res call({List<KeepItem> items});
}

/// @nodoc
class _$MyStockStateCopyWithImpl<$Res, $Val extends MyStockState>
    implements $MyStockStateCopyWith<$Res> {
  _$MyStockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KeepItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyStockStateCopyWith<$Res>
    implements $MyStockStateCopyWith<$Res> {
  factory _$$_MyStockStateCopyWith(
          _$_MyStockState value, $Res Function(_$_MyStockState) then) =
      __$$_MyStockStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KeepItem> items});
}

/// @nodoc
class __$$_MyStockStateCopyWithImpl<$Res>
    extends _$MyStockStateCopyWithImpl<$Res, _$_MyStockState>
    implements _$$_MyStockStateCopyWith<$Res> {
  __$$_MyStockStateCopyWithImpl(
      _$_MyStockState _value, $Res Function(_$_MyStockState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_MyStockState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KeepItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyStockState implements _MyStockState {
  const _$_MyStockState({required final List<KeepItem> items}) : _items = items;

  factory _$_MyStockState.fromJson(Map<String, dynamic> json) =>
      _$$_MyStockStateFromJson(json);

  final List<KeepItem> _items;
  @override
  List<KeepItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MyStockState(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyStockState &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyStockStateCopyWith<_$_MyStockState> get copyWith =>
      __$$_MyStockStateCopyWithImpl<_$_MyStockState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyStockStateToJson(
      this,
    );
  }
}

abstract class _MyStockState implements MyStockState {
  const factory _MyStockState({required final List<KeepItem> items}) =
      _$_MyStockState;

  factory _MyStockState.fromJson(Map<String, dynamic> json) =
      _$_MyStockState.fromJson;

  @override
  List<KeepItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$_MyStockStateCopyWith<_$_MyStockState> get copyWith =>
      throw _privateConstructorUsedError;
}
