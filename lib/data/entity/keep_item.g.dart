// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keep_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeepItemn _$$_KeepItemnFromJson(Map<String, dynamic> json) => _$_KeepItemn(
      id: json['id'] as int,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String?,
      targetUrl: json['targetUrl'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_KeepItemnToJson(_$_KeepItemn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'targetUrl': instance.targetUrl,
      'createAt': instance.createAt.toIso8601String(),
    };
