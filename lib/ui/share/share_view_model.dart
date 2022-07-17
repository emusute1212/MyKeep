import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/share/state/share_state.dart';
import 'package:mykeep/usecase/my_keep_usecase.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

final shareViewModelProvider =
    StateNotifierProvider<ShareViewModel, ShareState>(
        (ref) => ShareViewModel(ref.read(myKeepUsecaseyProvider)));

class ShareViewModel extends StateNotifier<ShareState> {
  StreamSubscription? _intentDataStreamSubscription;
  final MyKeepUsecase _usecase;

  ShareViewModel(this._usecase)
      : super(const ShareState(
          url: null,
        ));

  void init() {
    _intentDataStreamSubscription =
        ReceiveSharingIntent.getTextStream().listen((String value) {
      _onNotifyUrl(value);
    }, onError: (err) {
      print("getLinkStream error: $err");
    });

    ReceiveSharingIntent.getInitialText().then((value) {
      _onNotifyUrl(value);
    });
  }

  void _onNotifyUrl(String? url) {
    print("Shareed Url is `$url`");
    if (url == null) return;
    state = state.copyWith(
      url: url,
    );
    _usecase.addKeepItem(url);
  }

  @override
  void dispose() {
    _intentDataStreamSubscription?.cancel();
    super.dispose();
  }
}
