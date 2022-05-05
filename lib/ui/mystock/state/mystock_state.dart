import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mykeep/data/entity/keep_item.dart';

part 'mystock_state.freezed.dart';
part 'mystock_state.g.dart';

@freezed
class MystockState with _$MystockState {
  const factory MystockState({
    required List<KeepItem> items,
  }) = _MystockState;

  factory MystockState.fromJson(Map<String, Object?> json) =>
      _$MystockStateFromJson(json);
}
