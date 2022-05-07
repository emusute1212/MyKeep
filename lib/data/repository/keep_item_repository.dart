import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/utils/stock_items_ext.dart';

import '../db/my_keep_database.dart';

final keepItemRepositoryProvider =
    Provider((ref) => KeepItemRepository(ref.read(myKeepDatabaseProvider)));

class KeepItemRepository {
  final MyKeepDatabase _database;

  KeepItemRepository(this._database);

  Stream<List<KeepItem>> observeKeepItems() {
    return _database
        .observe()
        .map((it) => it.map((e) => e.toKeepItem()).toList());
  }

  Future<void> addKeepItem(String title, String? imageUrl, String targetUrl,
      DateTime createAt) async {
    final targetItem = StockItemsCompanion(
        title: Value(title),
        imageUrl: Value(imageUrl),
        targetUrl: Value(targetUrl),
        createAt: Value(createAt));
    await _database.addStockItem(targetItem);
  }

  Future<void> deleteKeepItem(KeepItem target) async {
    await _database.deleteStockItem(target.id);
  }
}
