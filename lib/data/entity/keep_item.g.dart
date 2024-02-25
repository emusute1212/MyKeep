// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keep_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeepItemnImpl _$$KeepItemnImplFromJson(Map<String, dynamic> json) =>
    _$KeepItemnImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String?,
      targetUrl: json['targetUrl'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$KeepItemnImplToJson(_$KeepItemnImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'targetUrl': instance.targetUrl,
      'createAt': instance.createAt.toIso8601String(),
    };
