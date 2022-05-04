import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mykeep/data/db/my_keep_database.dart';
import 'package:mykeep/data/entity/keep_item.dart';
import 'package:mykeep/data/repository/keep_item_repository.dart';

void main() {
  late MyKeepDatabase database;
  late KeepItemRepository keepItemRepository;

  setUp(() {
    database = MyKeepDatabase.withQueryExecutor(NativeDatabase.memory());
    keepItemRepository = KeepItemRepository(database);
  });

  test('アイテムを追加・見るテスト', () async {
    await keepItemRepository.addKeepItem(
        "test1", "https://example.com/images", "https://example.com");

    var result = await keepItemRepository.observeKeepItems().first;

    expect(result.length, 1);
    expect(result.first.title, "test1");
    expect(result.first.imageUrl, "https://example.com/images");
    expect(result.first.targetUrl, "https://example.com");
  });
  test('アイテムを削除するテスト', () async {
    await keepItemRepository.addKeepItem(
        "test1", "https://example.com/images", "https://example.com");

    var result = await keepItemRepository.observeKeepItems().first;

    await keepItemRepository.deleteKeepItem(result.first); // 日付はいつのものでも大丈夫のはず

    var resultAfter = await keepItemRepository.observeKeepItems().first;

    expect(resultAfter.length, 0);
  });

  tearDown(() async {
    await database.close();
  });
}
