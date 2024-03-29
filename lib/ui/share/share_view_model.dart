import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/share/state/share_state.dart';
import 'package:mykeep/usecase/my_keep_usecase.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

final shareViewModelProvider =
    StateNotifierProvider<ShareViewModel, ShareState>(
        (ref) => ShareViewModel(ref.read(myKeepUsecaseyProvider)));

class ShareViewModel extends StateNotifier<ShareState> {
  late final StreamSubscription _intentDataStreamSubscription;
  final MyKeepUsecase _usecase;

  ShareViewModel(this._usecase)
      : super(const ShareState(
          url: null,
          isSuccess: null,
        ));

  void init() {
    _intentDataStreamSubscription = ReceiveSharingIntent.getMediaStream()
        .listen((List<SharedMediaFile> stream) {
      for (var value in stream) {
        _onNotifyUrl(value.path);
      }
    }, onError: (err) {
      print("getLinkStream error: $err");
    });

    ReceiveSharingIntent.getInitialMedia().then((media) {
      for (var value in media) {
        _onNotifyUrl(value.path);
      }
    });
  }

  void _onNotifyUrl(String? url) async {
    print("Shared Url is `$url`");
    if (url == null) return;
    _usecase.addKeepItem(url).then((isSuccess) {
      state = state.copyWith(
        url: url,
        isSuccess: isSuccess,
      );
    });
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }
}
