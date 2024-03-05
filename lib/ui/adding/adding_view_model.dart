import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/adding/state/adding_state.dart';
import 'package:mykeep/usecase/my_keep_usecase.dart';
import 'package:string_validator/string_validator.dart';

final addingViewModelProvider =
    StateNotifierProvider<AddingViewModel, AddingState>(
        (ref) => AddingViewModel(ref.read(myKeepUsecaseyProvider)));

class AddingViewModel extends StateNotifier<AddingState> {
  final MyKeepUsecase _usecase;

  AddingViewModel(this._usecase)
      : super(const AddingState(
          url: "",
          title: "",
          isPossibleToSave: false,
        ));

  Future<bool> addKeepItem(String targetUrl) async {
    bool isSuccess = await _usecase.addKeepItem(targetUrl);
    _resetAddingState();
    return isSuccess;
  }

  void onChangeUrl(String urlText) {
    state = state.copyWith(url: urlText, isPossibleToSave: isURL(urlText));
  }

  void _resetAddingState() {
    state = state.copyWith(
      url: "",
      title: "",
      isPossibleToSave: false,
    );
  }
}
