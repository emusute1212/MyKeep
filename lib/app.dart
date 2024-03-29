import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/adding/adding_page.dart';
import 'package:mykeep/ui/dialog/error_dialog.dart';
import 'package:mykeep/ui/menu/menus.dart';
import 'package:mykeep/ui/mystock/my_stock_empty.dart';
import 'package:mykeep/ui/mystock/my_stock_page.dart';
import 'package:mykeep/ui/mystock/my_stock_view_model.dart';
import 'package:mykeep/ui/mystock/state/my_stock_state.dart';
import 'package:mykeep/ui/share/share_view_model.dart';
import 'package:mykeep/ui/share/state/share_state.dart';

class App extends HookConsumerWidget {
  App({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ShareViewModel shareViewModel =
        ref.read(shareViewModelProvider.notifier);
    final ShareState shareState = ref.watch(shareViewModelProvider);
    // MEMO 共有ボタンから飛んできたときに追加画面を開く機能。
    // 初回リリースでは不要。
    // ただし、後々追加される可能性はあるので一応コメントアウトで残しておく。
    // final ShareState state = ref.watch(shareViewModelProvider);
    final MyStockViewModel myStockViewModel =
        ref.read(myStockViewModelProvider.notifier);
    final MyStockState state = ref.watch(myStockViewModelProvider);

    useEffect(() {
      shareViewModel.init();
      myStockViewModel.init();
      return null;
    }, const []);

    return MaterialApp(
      title: 'My keep',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFF1F1F1),
        ),
        fontFamily: ".SF Pro Display",
      ),
      home: Builder(builder: (context) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // MEMO 共有ボタンから飛んできたときに追加画面を開く機能。
          // 初回リリースでは不要。
          // ただし、後々追加される可能性はあるので一応コメントアウトで残しておく。
          //   if (state.url?.isNotEmpty == true) {
          //     AddingPage.showAddingPage(context);
          //   }
          if (shareState.isSuccess == false) {
            const ErrorDialog(
              title: "サイトを読み込むことができませんでした。",
              message: "画像、タイトルを読み込むことができませんでしたので、\n初期値で登録いたしました。",
              closeButtonLabel: "はい",
            ).show(context);
          }
        });
        return Scaffold(
          key: _key,
          body: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.reverse) {
                myStockViewModel.onStartScrollToRevers();
              } else if (notification.direction == ScrollDirection.forward) {
                myStockViewModel.onStartScrollToForward();
              }
              return true;
            },
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  backgroundColor: const Color(0xFFF1F1F1),
                  expandedHeight: 126,
                  stretch: true,
                  iconTheme: const IconThemeData(color: Colors.black),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          _key.currentState?.openEndDrawer();
                        },
                        icon: const Icon(Icons.settings),
                        iconSize: 30,
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                      bottom: 7,
                    ),
                    title: Row(
                      children: [
                        const Text(
                          "マイキープ",
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Wrap(children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF09BC8A),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              state.items.length.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                  ),
                ),
                state.items.isEmpty
                    ? const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 88,
                          ),
                          child: MyStockEmpty(),
                        ),
                      )
                    : const SliverPadding(
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
          ),
          endDrawer: Drawer(
            child: ListView(
              children: Menus.values
                  .map((e) => ListTile(
                        title: Text(e.displayName),
                        onTap: () {
                          Navigator.pop(context);
                          _showMenuContent(context, e);
                        },
                      ))
                  .toList(),
            ),
          ),
          floatingActionButton: state.isFabVisible
              ? FloatingActionButton(
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xFF2D2D2D),
                  onPressed: () {
                    AddingPage.showAddingPage(context);
                  },
                  child: const Icon(Icons.add_sharp),
                )
              : null,
        );
      }),
    );
  }

  void _showMenuContent(BuildContext context, Menus menu) {
    switch (menu) {
      case Menus.legal:
        showAboutDialog(
          context: context,
          applicationIcon: const Icon(Icons.info),
          applicationName: 'My Keep',
        );
    }
  }
}
