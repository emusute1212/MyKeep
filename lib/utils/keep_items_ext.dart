import 'package:drift/drift.dart';
import 'package:mykeep/data/db/my_keep_database.dart';
import 'package:mykeep/data/entity/keep_item.dart';

extension KeepItemExt on KeepItem {
  StockItemsCompanion toStockItemsCompanion() {
    return StockItemsCompanion(
        id: Value(id),
        title: Value(title),
        imageUrl: Value(imageUrl),
        targetUrl: Value(targetUrl),
        createAt: Value(createAt));
  }
}
