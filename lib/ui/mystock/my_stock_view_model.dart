import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/mystock/state/my_stock_state.dart';
import 'package:mykeep/usecase/my_keep_usecase.dart';

import '../../data/entity/keep_item.dart';

final myStockViewModelProvider =
    StateNotifierProvider<MyStockViewModel, MyStockState>(
        (ref) => MyStockViewModel(ref.read(myKeepUsecaseyProvider)));

class MyStockViewModel extends StateNotifier<MyStockState> {
  final MyKeepUsecase _usecase;

  MyStockViewModel(this._usecase)
      : super(const MyStockState(
          items: [],
          isFabVisible: true,
        ));

  void init() {
    _usecase.observeKeepItem().listen((event) {
      state = state.copyWith(items: event);
    });
  }

  void onStartScrollToForward() {
    state = state.copyWith(isFabVisible: true);
  }

  void onStartScrollToRevers() {
    state = state.copyWith(isFabVisible: false);
  }

  void onCheckStock(KeepItem item) {
    _usecase.deleteKeepItem(item);
    state = state.copyWith(
      isFabVisible: true,
    );
  }
}
