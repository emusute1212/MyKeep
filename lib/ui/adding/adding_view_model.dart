import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/adding/state/adding_state.dart';
import 'package:mykeep/usecase/my_keep_usecase.dart';

final addingViewModelProvider =
    StateNotifierProvider<AddingViewModel, AddingState>(
        (ref) => AddingViewModel(ref.read, ref.read(myKeepUsecaseyProvider)));

class AddingViewModel extends StateNotifier<AddingState> {
  final MyKeepUsecase _usecase;

  AddingViewModel(state, this._usecase) : super(state);

  Future<void> addKeepItem(String targetUrl) {
    return _usecase.addKeepItem(targetUrl);
  }
}
