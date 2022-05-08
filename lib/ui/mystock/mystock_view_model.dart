import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/mystock/state/mystock_state.dart';
import 'package:mykeep/usecase/my_keep_usecase.dart';

import '../../data/entity/keep_item.dart';

final myStockViewModelProvider = StateNotifierProvider(
    (ref) => MyStockViewModel(ref.read, ref.read(myKeepUsecaseyProvider)));

class MyStockViewModel extends StateNotifier<MystockState> {
  final MyKeepUsecase _usecase;

  MyStockViewModel(state, this._usecase) : super(state);

  void init() {
    _usecase.observeKeepItem().listen((event) {
      state = state.copyWith(
        items: event
      );
    });
  }

  void deleteStock(KeepItem item) {
    _usecase.deleteKeepItem(item);
  }
}
