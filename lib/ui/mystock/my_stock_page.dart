import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/ui/mystock/mystock_view_model.dart';
import 'package:mykeep/ui/mystock/state/mystock_state.dart';
import 'package:mykeep/ui/mystock/stock_element.dart';

class StockImageView extends HookConsumerWidget {
  const StockImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyStockViewModel mystockViewModel =
        ref.read(myStockViewModelProvider.notifier);
    final MystockState state = ref.watch(myStockViewModelProvider);
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
