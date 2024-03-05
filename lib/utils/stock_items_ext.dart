import 'package:mykeep/data/db/my_keep_database.dart';
import 'package:mykeep/data/entity/keep_item.dart';

extension StockItemExt on StockItem {
  KeepItem toKeepItem() {
    return KeepItem(
      id: id,
      title: title,
      imageUrl: imageUrl,
      targetUrl: targetUrl,
      createAt: createAt,
    );
  }
}
