// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_stock_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyStockStateImpl _$$MyStockStateImplFromJson(Map<String, dynamic> json) =>
    _$MyStockStateImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => KeepItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFabVisible: json['isFabVisible'] as bool,
    );

Map<String, dynamic> _$$MyStockStateImplToJson(_$MyStockStateImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'isFabVisible': instance.isFabVisible,
    };
