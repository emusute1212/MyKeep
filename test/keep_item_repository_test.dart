import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mykeep/data/db/my_keep_database.dart';
import 'package:mykeep/data/repository/keep_item_repository.dart';

void main() {
  late final MyKeepDatabase _database;
  late final KeepItemRepository _keepItemRepository;

  setUp(() {
    _database = MyKeepDatabase.withQueryExecutor(NativeDatabase.memory());
    _keepItemRepository = KeepItemRepository(_database);
  });

  test('アイテムを追加・見るテスト', () async {
    final currentDate = DateTime.now();
    await _keepItemRepository.addKeepItem("test1", "https://example.com/images",
        "https://example.com", currentDate);

    final result = await _keepItemRepository.observeKeepItems().first;

    expect(result.length, 1);
    expect(result.first.title, "test1");
    expect(result.first.imageUrl, "https://example.com/images");
    expect(result.first.targetUrl, "https://example.com");
  });
  test('アイテムを削除するテスト', () async {
    final currentDate = DateTime.now();
    await _keepItemRepository.addKeepItem("test1", "https://example.com/images",
        "https://example.com", currentDate);

    final result = await _keepItemRepository.observeKeepItems().first;

    await _keepItemRepository.deleteKeepItem(result.first);

    final resultAfter = await _keepItemRepository.observeKeepItems().first;

    expect(resultAfter.length, 0);
  });
  test('アイテムを編集するテスト', () async {
    final currentDate = DateTime.now();
    await _keepItemRepository.addKeepItem("test1", "https://example.com/images",
        "https://example.com", currentDate);

    final result = await _keepItemRepository.observeKeepItems().first;

    final updateItem = result.first.copyWith(
      title: "update1",
      imageUrl: "https://example.com/1/images",
      targetUrl: "https://example.com/1",
    );

    await _keepItemRepository.updateKeepItem(updateItem);

    final resultAfter = await _keepItemRepository.observeKeepItems().first;

    expect(resultAfter.length, 1);
    expect(resultAfter.first.title, "update1");
    expect(resultAfter.first.imageUrl, "https://example.com/1/images");
    expect(resultAfter.first.targetUrl, "https://example.com/1");
  });

  tearDown(() async {
    await _database.close();
  });
}
