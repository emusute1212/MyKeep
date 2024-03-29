import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mykeep/data/db/my_keep_database.dart';
import 'package:mykeep/data/repository/keep_item_repository.dart';

void main() {
  late MyKeepDatabase database;
  late KeepItemRepository keepItemRepository;

  setUp(() {
    database = MyKeepDatabase.withQueryExecutor(NativeDatabase.memory());
    keepItemRepository = KeepItemRepository(database);
  });
  tearDown(() async {
    await database.close();
  });

  test('アイテムを追加・見るテスト', () async {
    final currentDate = DateTime.now();
    await keepItemRepository.addKeepItem("test1", "https://example.com/images",
        "https://example.com", currentDate);

    final result = await keepItemRepository.observeKeepItems().first;

    expect(result.length, 1);
    expect(result.first.title, "test1");
    expect(result.first.imageUrl, "https://example.com/images");
    expect(result.first.targetUrl, "https://example.com");
  });
  test('アイテムを削除するテスト', () async {
    final currentDate = DateTime.now();
    await keepItemRepository.addKeepItem("test1", "https://example.com/images",
        "https://example.com", currentDate);

    final result = await keepItemRepository.observeKeepItems().first;

    await keepItemRepository.deleteKeepItem(result.first);

    final resultAfter = await keepItemRepository.observeKeepItems().first;

    expect(resultAfter.length, 0);
  });
  test('アイテムを編集するテスト', () async {
    final currentDate = DateTime.now();
    await keepItemRepository.addKeepItem("test1", "https://example.com/images",
        "https://example.com", currentDate);

    final result = await keepItemRepository.observeKeepItems().first;

    final updateItem = result.first.copyWith(
      title: "update1",
      imageUrl: "https://example.com/1/images",
      targetUrl: "https://example.com/1",
    );

    await keepItemRepository.updateKeepItem(updateItem);

    final resultAfter = await keepItemRepository.observeKeepItems().first;

    expect(resultAfter.length, 1);
    expect(resultAfter.first.title, "update1");
    expect(resultAfter.first.imageUrl, "https://example.com/1/images");
    expect(resultAfter.first.targetUrl, "https://example.com/1");
  });

  tearDown(() async {
    await database.close();
  });
}
