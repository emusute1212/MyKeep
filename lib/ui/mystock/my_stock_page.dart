import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/mystock/my_stock_view_model.dart';
import 'package:mykeep/ui/mystock/state/my_stock_state.dart';
import 'package:mykeep/ui/mystock/stock_element.dart';

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
        return StockElement(item: state.items[index]);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }
}
