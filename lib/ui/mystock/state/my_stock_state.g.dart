// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_stock_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyStockState _$$_MyStockStateFromJson(Map<String, dynamic> json) =>
    _$_MyStockState(
      items: (json['items'] as List<dynamic>)
          .map((e) => KeepItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyStockStateToJson(_$_MyStockState instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
