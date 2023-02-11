import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/adding/adding_page.dart';
import 'package:mykeep/ui/mystock/my_stock_page.dart';
import 'package:mykeep/ui/share/share_view_model.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ShareViewModel shareViewModel =
        ref.read(shareViewModelProvider.notifier);
    // MEMO 共有ボタンから飛んできたときに追加画面を開く機能。
    // 初回リリースでは不要。
    // ただし、後々追加される可能性はあるので一応コメントアウトで残しておく。
    // final ShareState state = ref.watch(shareViewModelProvider);

    useEffect(() {
      shareViewModel.init();
      return null;
    }, const []);

    return MaterialApp(
      title: 'My keep',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFe5e5e5),
        ),
        fontFamily: ".SF Pro Display",
      ),
      home: Builder(builder: (context) {
        // MEMO 共有ボタンから飛んできたときに追加画面を開く機能。
        // 初回リリースでは不要。
        // ただし、後々追加される可能性はあるので一応コメントアウトで残しておく。
        // WidgetsBinding.instance.addPostFrameCallback((_) {
        //   print("url is " + state.url.toString());
        //   if (state.url?.isNotEmpty == true) {
        //     AddingPage.showAddingPage(context);
        //   }
        // });
        return Scaffold(
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                backgroundColor: const Color(0xFFF8F8F8),
                expandedHeight: 126,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        AddingPage.showAddingPage(context);
                      },
                      icon: const Icon(Icons.add_sharp),
                      color: Colors.black,
                      iconSize: 30,
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
                    "マイキープ",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SliverPadding(
                sliver: MyStockPage(),
                padding: EdgeInsets.only(
                  top: 22,
                  left: 16,
                  right: 16,
                  bottom: 22,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
