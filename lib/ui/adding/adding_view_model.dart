import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/adding/state/adding_state.dart';

final addingViewModelProvider =
    StateNotifierProvider((ref) => AddingViewModel(ref.read));

class AddingViewModel extends StateNotifier<AddingState> {
  AddingViewModel(state) : super(state);
}
