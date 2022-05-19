import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

    useEffect(() {
      myStockViewModel.init();
      return null;
    }, const []);
    return GridView.builder(
      itemCount: state.items.length,
      itemBuilder: (_, index) {
        final KeepItem item = state.items[index];
        return StockElement(
          item: item,
          onTapItem: (item) => {
            launchUrl(Uri.parse(item.targetUrl),
                mode: LaunchMode.externalApplication)
          },
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }
}
