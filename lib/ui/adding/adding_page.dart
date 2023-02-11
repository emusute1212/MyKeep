import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/adding/adding_view_model.dart';
import 'package:mykeep/ui/adding/state/adding_state.dart';

class AddingPage extends HookConsumerWidget {
  const AddingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AddingViewModel addingViewModel =
        ref.read(addingViewModelProvider.notifier);
    final AddingState state = ref.watch(addingViewModelProvider);

    return Column(
      children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: const Text(
                    "キャンセル",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                    padding: const EdgeInsets.only(
                      top: 22,
                      left: 8,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Visibility(
                  visible: state.isPossibleToSave,
                  child: TextButton(
                    child: const Text(
                      "完了",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                      padding: const EdgeInsets.only(
                        top: 22,
                        right: 8,
                      ),
                    ),
                    onPressed: () {
                      addingViewModel.addKeepItem(state.url);
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 22,
              ),
              alignment: Alignment.center,
              child: const Text(
                "追加",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 32,
              ),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (input) {
                  addingViewModel.onChangeUrl(input);
                },
                style: const TextStyle(
                  fontSize: 18,
                ),
                validator: (_) {
                  if (state.isPossibleToSave) {
                    return null;
                  }
                  return "URLの形式になるようにしてください";
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintText: "URL",
                  contentPadding: const EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                    left: 12,
                    right: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  static void showAddingPage(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        ),
      ),
      backgroundColor: const Color(0xFFF8F8F8),
      context: context,
      isScrollControlled: false,
      builder: (_) => const AddingPage(),
    );
  }
}
