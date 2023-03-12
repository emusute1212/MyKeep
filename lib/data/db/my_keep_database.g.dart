// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_keep_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class StockItem extends DataClass implements Insertable<StockItem> {
  final int id;
  final String title;
  final String? imageUrl;
  final String targetUrl;
  final DateTime createAt;
  StockItem(
      {required this.id,
      required this.title,
      this.imageUrl,
      required this.targetUrl,
      required this.createAt});
  factory StockItem.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return StockItem(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      imageUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
      targetUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}target_url'])!,
      createAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}create_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String?>(imageUrl);
    }
    map['target_url'] = Variable<String>(targetUrl);
    map['create_at'] = Variable<DateTime>(createAt);
    return map;
  }

  StockItemsCompanion toCompanion(bool nullToAbsent) {
    return StockItemsCompanion(
      id: Value(id),
      title: Value(title),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      targetUrl: Value(targetUrl),
      createAt: Value(createAt),
    );
  }

  factory StockItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockItem(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      targetUrl: serializer.fromJson<String>(json['targetUrl']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'targetUrl': serializer.toJson<String>(targetUrl),
      'createAt': serializer.toJson<DateTime>(createAt),
    };
  }

  StockItem copyWith(
          {int? id,
          String? title,
          String? imageUrl,
          String? targetUrl,
          DateTime? createAt}) =>
      StockItem(
        id: id ?? this.id,
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        targetUrl: targetUrl ?? this.targetUrl,
        createAt: createAt ?? this.createAt,
      );
  @override
  String toString() {
    return (StringBuffer('StockItem(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('targetUrl: $targetUrl, ')
          ..write('createAt: $createAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, imageUrl, targetUrl, createAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockItem &&
          other.id == this.id &&
          other.title == this.title &&
          other.imageUrl == this.imageUrl &&
          other.targetUrl == this.targetUrl &&
          other.createAt == this.createAt);
}

class StockItemsCompanion extends UpdateCompanion<StockItem> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> imageUrl;
  final Value<String> targetUrl;
  final Value<DateTime> createAt;
  const StockItemsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.targetUrl = const Value.absent(),
    this.createAt = const Value.absent(),
  });
  StockItemsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.imageUrl = const Value.absent(),
    required String targetUrl,
    required DateTime createAt,
  })  : title = Value(title),
        targetUrl = Value(targetUrl),
        createAt = Value(createAt);
  static Insertable<StockItem> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String?>? imageUrl,
    Expression<String>? targetUrl,
    Expression<DateTime>? createAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (imageUrl != null) 'image_url': imageUrl,
      if (targetUrl != null) 'target_url': targetUrl,
      if (createAt != null) 'create_at': createAt,
    });
  }

  StockItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String?>? imageUrl,
      Value<String>? targetUrl,
      Value<DateTime>? createAt}) {
    return StockItemsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
      createAt: createAt ?? this.createAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String?>(imageUrl.value);
    }
    if (targetUrl.present) {
      map['target_url'] = Variable<String>(targetUrl.value);
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockItemsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('targetUrl: $targetUrl, ')
          ..write('createAt: $createAt')
          ..write(')'))
        .toString();
  }
}

class $StockItemsTable extends StockItems
    with TableInfo<$StockItemsTable, StockItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockItemsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String?> imageUrl = GeneratedColumn<String?>(
      'image_url', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _targetUrlMeta = const VerificationMeta('targetUrl');
  @override
  late final GeneratedColumn<String?> targetUrl = GeneratedColumn<String?>(
      'target_url', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createAtMeta = const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime?> createAt = GeneratedColumn<DateTime?>(
      'create_at', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, imageUrl, targetUrl, createAt];
  @override
  String get aliasedName => _alias ?? 'stock_items';
  @override
  String get actualTableName => 'stock_items';
  @override
  VerificationContext validateIntegrity(Insertable<StockItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('target_url')) {
      context.handle(_targetUrlMeta,
          targetUrl.isAcceptableOrUnknown(data['target_url']!, _targetUrlMeta));
    } else if (isInserting) {
      context.missing(_targetUrlMeta);
    }
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    } else if (isInserting) {
      context.missing(_createAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StockItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    return StockItem.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $StockItemsTable createAlias(String alias) {
    return $StockItemsTable(attachedDatabase, alias);
  }
}

abstract class _$MyKeepDatabase extends GeneratedDatabase {
  _$MyKeepDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $StockItemsTable stockItems = $StockItemsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [stockItems];
}
