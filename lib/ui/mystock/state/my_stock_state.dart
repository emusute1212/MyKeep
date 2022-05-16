import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mykeep/data/entity/keep_item.dart';

part 'my_stock_state.freezed.dart';
part 'my_stock_state.g.dart';

@freezed
class MyStockState with _$MyStockState {
  const factory MyStockState({
    required List<KeepItem> items,
  }) = _MyStockState;

  factory MyStockState.fromJson(Map<String, Object?> json) =>
      _$MyStockStateFromJson(json);
}
