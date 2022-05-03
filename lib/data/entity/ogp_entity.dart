import 'package:freezed_annotation/freezed_annotation.dart';

part 'ogp_entity.freezed.dart';
part 'ogp_entity.g.dart';

@freezed
class OgpEntity with _$OgpEntity {
  static OgpEntity empty = const OgpEntity(title: "Undefined", imageUrl: null);

  const factory OgpEntity({
    required String title,
    required String? imageUrl,
  }) = _OgpEntity;

  factory OgpEntity.fromJson(Map<String, Object?> json) =>
      _$OgpEntityFromJson(json);
}