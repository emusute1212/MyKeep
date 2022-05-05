// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mystock_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MystockState _$$_MystockStateFromJson(Map<String, dynamic> json) =>
    _$_MystockState(
      items: (json['items'] as List<dynamic>)
          .map((e) => KeepItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MystockStateToJson(_$_MystockState instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
