import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/mystock/state/mystock_state.dart';

final myStockViewModelProvider =
    StateNotifierProvider((ref) => MyStockViewModel(ref.read));

class MyStockViewModel extends StateNotifier<MystockState> {
  MyStockViewModel(state) : super(state);
}
