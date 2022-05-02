import 'package:drift/drift.dart';
import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/utils/stock_items_ext.dart';

import '../db/my_keep_database.dart';

class KeepItemRepository {
  final database = MyKeepDatabase();

  Stream<List<KeepItem>> observeKeepItems() {
    return database
        .observe()
        .map((it) => it.map((e) => e.toKeepItem()).toList());
  }

  void addKeepItem(String title, String? imageUrl, String targetUrl) {
    StockItemsCompanion targetItem = StockItemsCompanion(
      title: Value(title),
      imageUrl: Value(imageUrl),
      targetUrl: Value(targetUrl),
      createAt: Value(DateTime.now())
    );
    database.addStockItem(targetItem);
  }

  void deleteKeepItem(KeepItem target) {
    database.deleteStockItem(target.id);
  }
}
