import 'package:drift/drift.dart';
import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/utils/stock_items_ext.dart';

import '../db/my_keep_database.dart';

class KeepItemRepository {
  final MyKeepDatabase database;

  KeepItemRepository(this.database);

  Stream<List<KeepItem>> observeKeepItems() {
    return database
        .observe()
        .map((it) => it.map((e) => e.toKeepItem()).toList());
  }

  Future<void> addKeepItem(
      String title, String? imageUrl, String targetUrl) async {
    StockItemsCompanion targetItem = StockItemsCompanion(
        title: Value(title),
        imageUrl: Value(imageUrl),
      targetUrl: Value(targetUrl),
      createAt: Value(DateTime.now())
    );
    await database.addStockItem(targetItem);
  }

  Future<void> deleteKeepItem(KeepItem target) async {
    await database.deleteStockItem(target.id);
  }
}
