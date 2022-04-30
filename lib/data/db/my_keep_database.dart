import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'my_keep_database.g.dart';

class StockItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get targetUrl => text()();
  DateTimeColumn get createAt => dateTime()();
}

@DriftDatabase(tables: [StockItems])
class MyKeepDatabase extends _$MyKeepDatabase {
  MyKeepDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbDir = await getApplicationDocumentsDirectory();
    final dbFile = File(path.join(dbDir.path, 'my_keep_database.sqlite'));
    return NativeDatabase(dbFile);
  });
}
