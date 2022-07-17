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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        leading: TextButton(
          child: const Text("キャンセル"),
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "追加",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Visibility(
            visible: state.isPossibleToSave,
            child: TextButton(
              child: const Text("完了"),
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                addingViewModel.addKeepItem(state.url);
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (input) {
              addingViewModel.onChangeUrl(input);
            },
            validator: (_) {
              if (state.isPossibleToSave) {
                return null;
              }
              return "URLの形式になるようにしてください。";
            },
            decoration: const InputDecoration(
              labelText: "URL",
            ),
          ),
        ],
      ),
    );
  }

  static void showAddingPage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      builder: (_) => const AddingPage(),
    );
  }
}
