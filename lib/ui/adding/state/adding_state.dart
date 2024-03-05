import 'package:freezed_annotation/freezed_annotation.dart';

part 'adding_state.freezed.dart';
part 'adding_state.g.dart';

@freezed
class AddingState with _$AddingState {
  const factory AddingState({
    required String url,
    required String title,
    required bool isPossibleToSave,
  }) = _AddingState;

  factory AddingState.fromJson(Map<String, Object?> json) =>
      _$AddingStateFromJson(json);
}
