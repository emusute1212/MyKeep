import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_state.freezed.dart';
part 'share_state.g.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState({
    required String? url,
    required bool? isSuccess,
  }) = _ShareState;

  factory ShareState.fromJson(Map<String, Object?> json) =>
      _$ShareStateFromJson(json);
}
