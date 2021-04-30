// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String title;
  final String mainText;
  final String date;
  final String deadLine;
  Todo(
      {@required this.id,
      @required this.title,
      @required this.mainText,
      @required this.date,
      @required this.deadLine});
  factory Todo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Todo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      mainText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}main_text']),
      date: stringType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      deadLine: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dead_line']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || mainText != null) {
      map['main_text'] = Variable<String>(mainText);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<String>(date);
    }
    if (!nullToAbsent || deadLine != null) {
      map['dead_line'] = Variable<String>(deadLine);
    }
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      mainText: mainText == null && nullToAbsent
          ? const Value.absent()
          : Value(mainText),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      deadLine: deadLine == null && nullToAbsent
          ? const Value.absent()
          : Value(deadLine),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      mainText: serializer.fromJson<String>(json['mainText']),
      date: serializer.fromJson<String>(json['date']),
      deadLine: serializer.fromJson<String>(json['deadLine']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'mainText': serializer.toJson<String>(mainText),
      'date': serializer.toJson<String>(date),
      'deadLine': serializer.toJson<String>(deadLine),
    };
  }

  Todo copyWith(
          {int id,
          String title,
          String mainText,
          String date,
          String deadLine}) =>
      Todo(
        id: id ?? this.id,
        title: title ?? this.title,
        mainText: mainText ?? this.mainText,
        date: date ?? this.date,
        deadLine: deadLine ?? this.deadLine,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('mainText: $mainText, ')
          ..write('date: $date, ')
          ..write('deadLine: $deadLine')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(title.hashCode,
          $mrjc(mainText.hashCode, $mrjc(date.hashCode, deadLine.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == this.id &&
          other.title == this.title &&
          other.mainText == this.mainText &&
          other.date == this.date &&
          other.deadLine == this.deadLine);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> mainText;
  final Value<String> date;
  final Value<String> deadLine;
  const TodosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.mainText = const Value.absent(),
    this.date = const Value.absent(),
    this.deadLine = const Value.absent(),
  });
  TodosCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String mainText,
    @required String date,
    @required String deadLine,
  })  : title = Value(title),
        mainText = Value(mainText),
        date = Value(date),
        deadLine = Value(deadLine);
  static Insertable<Todo> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> mainText,
    Expression<String> date,
    Expression<String> deadLine,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (mainText != null) 'main_text': mainText,
      if (date != null) 'date': date,
      if (deadLine != null) 'dead_line': deadLine,
    });
  }

  TodosCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> mainText,
      Value<String> date,
      Value<String> deadLine}) {
    return TodosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      mainText: mainText ?? this.mainText,
      date: date ?? this.date,
      deadLine: deadLine ?? this.deadLine,
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
    if (mainText.present) {
      map['main_text'] = Variable<String>(mainText.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (deadLine.present) {
      map['dead_line'] = Variable<String>(deadLine.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('mainText: $mainText, ')
          ..write('date: $date, ')
          ..write('deadLine: $deadLine')
          ..write(')'))
        .toString();
  }
}

class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  final GeneratedDatabase _db;
  final String _alias;
  $TodosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 32);
  }

  final VerificationMeta _mainTextMeta = const VerificationMeta('mainText');
  GeneratedTextColumn _mainText;
  @override
  GeneratedTextColumn get mainText => _mainText ??= _constructMainText();
  GeneratedTextColumn _constructMainText() {
    return GeneratedTextColumn('main_text', $tableName, false,
        minTextLength: 2, maxTextLength: 100);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedTextColumn _date;
  @override
  GeneratedTextColumn get date => _date ??= _constructDate();
  GeneratedTextColumn _constructDate() {
    return GeneratedTextColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deadLineMeta = const VerificationMeta('deadLine');
  GeneratedTextColumn _deadLine;
  @override
  GeneratedTextColumn get deadLine => _deadLine ??= _constructDeadLine();
  GeneratedTextColumn _constructDeadLine() {
    return GeneratedTextColumn(
      'dead_line',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, mainText, date, deadLine];
  @override
  $TodosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'todos';
  @override
  final String actualTableName = 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<Todo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('main_text')) {
      context.handle(_mainTextMeta,
          mainText.isAcceptableOrUnknown(data['main_text'], _mainTextMeta));
    } else if (isInserting) {
      context.missing(_mainTextMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date'], _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('dead_line')) {
      context.handle(_deadLineMeta,
          deadLine.isAcceptableOrUnknown(data['dead_line'], _deadLineMeta));
    } else if (isInserting) {
      context.missing(_deadLineMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Todo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TodosTable _todos;
  $TodosTable get todos => _todos ??= $TodosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todos];
}
