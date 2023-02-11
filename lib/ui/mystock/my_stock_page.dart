import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/ui/mystock/my_stock_view_model.dart';
import 'package:mykeep/ui/mystock/state/my_stock_state.dart';
import 'package:mykeep/ui/mystock/stock_element.dart';
import 'package:url_launcher/url_launcher.dart';

class MyStockPage extends HookConsumerWidget {
  const MyStockPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyStockViewModel myStockViewModel =
        ref.read(myStockViewModelProvider.notifier);
    final MyStockState state = ref.watch(myStockViewModelProvider);

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          final KeepItem item = state.items[index];
          return StockElement(
            item: item,
            onTapItem: (item) => {
              launchUrl(Uri.parse(item.targetUrl),
                  mode: LaunchMode.externalApplication)
            },
            onTapItemCheck: (item) => {myStockViewModel.deleteStock(item)},
          );
        },
        childCount: state.items.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 18,
      ),
    );
  }
}
