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
          onPressed: () {},
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
          TextButton(
            child: const Text("完了"),
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              labelText: "URL",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "タイトル",
            ),
          ),
        ],
      ),
    );
  }
}
