import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/adding/adding_view_model.dart';
import 'package:mykeep/ui/mystock/my_stock_page.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AddingViewModel addingViewModel =
    ref.read(addingViewModelProvider.notifier);

    return MaterialApp(
      title: 'My keep',
      theme: ThemeData(
        backgroundColor: const Color(0xFFF9F9F9),
        fontFamily: ".SF Pro Display",
      ),
      home: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xFFF9F9F9),
              expandedHeight: 126,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      addingViewModel.addKeepItem(
                          "https://qiita.com/emusute1212/items/6195cf18bfcbea2ef1d1");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.add_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ],
              flexibleSpace: const FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(
                  right: 16,
                  left: 16,
                  bottom: 7,
                ),
                title: Text(
                  "マイストック",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const MyStockPage(),
          ],
        ),
      ),
    );
  }
}