import 'package:freezed_annotation/freezed_annotation.dart';

part 'keep_item.freezed.dart';

@freezed
class KeepItem with _$KeepItem {
  const factory KeepItem({
    required int id,
    required String title,
    required String? imageUrl,
    required String targetUrl,
    required DateTime createAt,
  }) = _KeepItemn;

  factory KeepItem.fromJson(Map<String, Object?> json) =>
      _$KeepItemFromJson(json);
}
