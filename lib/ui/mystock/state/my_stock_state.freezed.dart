// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_stock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyStockState _$MyStockStateFromJson(Map<String, dynamic> json) {
  return _MyStockState.fromJson(json);
}

/// @nodoc
mixin _$MyStockState {
  List<KeepItem> get items => throw _privateConstructorUsedError;
  bool get isFabVisible => throw _privateConstructorUsedError;

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
  $Res call({List<KeepItem> items, bool isFabVisible});
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
    Object? isFabVisible = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KeepItem>,
      isFabVisible: null == isFabVisible
          ? _value.isFabVisible
          : isFabVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyStockStateImplCopyWith<$Res>
    implements $MyStockStateCopyWith<$Res> {
  factory _$$MyStockStateImplCopyWith(
          _$MyStockStateImpl value, $Res Function(_$MyStockStateImpl) then) =
      __$$MyStockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<KeepItem> items, bool isFabVisible});
}

/// @nodoc
class __$$MyStockStateImplCopyWithImpl<$Res>
    extends _$MyStockStateCopyWithImpl<$Res, _$MyStockStateImpl>
    implements _$$MyStockStateImplCopyWith<$Res> {
  __$$MyStockStateImplCopyWithImpl(
      _$MyStockStateImpl _value, $Res Function(_$MyStockStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isFabVisible = null,
  }) {
    return _then(_$MyStockStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<KeepItem>,
      isFabVisible: null == isFabVisible
          ? _value.isFabVisible
          : isFabVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyStockStateImpl implements _MyStockState {
  const _$MyStockStateImpl(
      {required final List<KeepItem> items, required this.isFabVisible})
      : _items = items;

  factory _$MyStockStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyStockStateImplFromJson(json);

  final List<KeepItem> _items;
  @override
  List<KeepItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool isFabVisible;

  @override
  String toString() {
    return 'MyStockState(items: $items, isFabVisible: $isFabVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStockStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.isFabVisible, isFabVisible) ||
                other.isFabVisible == isFabVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), isFabVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStockStateImplCopyWith<_$MyStockStateImpl> get copyWith =>
      __$$MyStockStateImplCopyWithImpl<_$MyStockStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyStockStateImplToJson(
      this,
    );
  }
}

abstract class _MyStockState implements MyStockState {
  const factory _MyStockState(
      {required final List<KeepItem> items,
      required final bool isFabVisible}) = _$MyStockStateImpl;

  factory _MyStockState.fromJson(Map<String, dynamic> json) =
      _$MyStockStateImpl.fromJson;

  @override
  List<KeepItem> get items;
  @override
  bool get isFabVisible;
  @override
  @JsonKey(ignore: true)
  _$$MyStockStateImplCopyWith<_$MyStockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
