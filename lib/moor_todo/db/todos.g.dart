// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ToDo extends DataClass implements Insertable<ToDo> {
  final int id;
  final String title;
  final String mainText;
  final DateTime date;
  final DateTime deadline;
  ToDo(
      {@required this.id,
      @required this.title,
      @required this.mainText,
      @required this.date,
      @required this.deadline});
  factory ToDo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ToDo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      mainText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}main_text']),
      date:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      deadline: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deadline']),
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
      map['date'] = Variable<DateTime>(date);
    }
    if (!nullToAbsent || deadline != null) {
      map['deadline'] = Variable<DateTime>(deadline);
    }
    return map;
  }

  ToDosCompanion toCompanion(bool nullToAbsent) {
    return ToDosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      mainText: mainText == null && nullToAbsent
          ? const Value.absent()
          : Value(mainText),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      deadline: deadline == null && nullToAbsent
          ? const Value.absent()
          : Value(deadline),
    );
  }

  factory ToDo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ToDo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      mainText: serializer.fromJson<String>(json['mainText']),
      date: serializer.fromJson<DateTime>(json['date']),
      deadline: serializer.fromJson<DateTime>(json['deadline']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'mainText': serializer.toJson<String>(mainText),
      'date': serializer.toJson<DateTime>(date),
      'deadline': serializer.toJson<DateTime>(deadline),
    };
  }

  ToDo copyWith(
          {int id,
          String title,
          String mainText,
          DateTime date,
          DateTime deadline}) =>
      ToDo(
        id: id ?? this.id,
        title: title ?? this.title,
        mainText: mainText ?? this.mainText,
        date: date ?? this.date,
        deadline: deadline ?? this.deadline,
      );
  @override
  String toString() {
    return (StringBuffer('ToDo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('mainText: $mainText, ')
          ..write('date: $date, ')
          ..write('deadline: $deadline')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(title.hashCode,
          $mrjc(mainText.hashCode, $mrjc(date.hashCode, deadline.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ToDo &&
          other.id == this.id &&
          other.title == this.title &&
          other.mainText == this.mainText &&
          other.date == this.date &&
          other.deadline == this.deadline);
}

class ToDosCompanion extends UpdateCompanion<ToDo> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> mainText;
  final Value<DateTime> date;
  final Value<DateTime> deadline;
  const ToDosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.mainText = const Value.absent(),
    this.date = const Value.absent(),
    this.deadline = const Value.absent(),
  });
  ToDosCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String mainText,
    @required DateTime date,
    @required DateTime deadline,
  })  : title = Value(title),
        mainText = Value(mainText),
        date = Value(date),
        deadline = Value(deadline);
  static Insertable<ToDo> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> mainText,
    Expression<DateTime> date,
    Expression<DateTime> deadline,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (mainText != null) 'main_text': mainText,
      if (date != null) 'date': date,
      if (deadline != null) 'deadline': deadline,
    });
  }

  ToDosCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> mainText,
      Value<DateTime> date,
      Value<DateTime> deadline}) {
    return ToDosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      mainText: mainText ?? this.mainText,
      date: date ?? this.date,
      deadline: deadline ?? this.deadline,
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
      map['date'] = Variable<DateTime>(date.value);
    }
    if (deadline.present) {
      map['deadline'] = Variable<DateTime>(deadline.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ToDosCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('mainText: $mainText, ')
          ..write('date: $date, ')
          ..write('deadline: $deadline')
          ..write(')'))
        .toString();
  }
}

class $ToDosTable extends ToDos with TableInfo<$ToDosTable, ToDo> {
  final GeneratedDatabase _db;
  final String _alias;
  $ToDosTable(this._db, [this._alias]);
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
        minTextLength: 3, maxTextLength: 32);
  }

  final VerificationMeta _mainTextMeta = const VerificationMeta('mainText');
  GeneratedTextColumn _mainText;
  @override
  GeneratedTextColumn get mainText => _mainText ??= _constructMainText();
  GeneratedTextColumn _constructMainText() {
    return GeneratedTextColumn('main_text', $tableName, false,
        minTextLength: 5);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedDateTimeColumn _date;
  @override
  GeneratedDateTimeColumn get date => _date ??= _constructDate();
  GeneratedDateTimeColumn _constructDate() {
    return GeneratedDateTimeColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deadlineMeta = const VerificationMeta('deadline');
  GeneratedDateTimeColumn _deadline;
  @override
  GeneratedDateTimeColumn get deadline => _deadline ??= _constructDeadline();
  GeneratedDateTimeColumn _constructDeadline() {
    return GeneratedDateTimeColumn(
      'deadline',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, mainText, date, deadline];
  @override
  $ToDosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'to_dos';
  @override
  final String actualTableName = 'to_dos';
  @override
  VerificationContext validateIntegrity(Insertable<ToDo> instance,
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
    if (data.containsKey('deadline')) {
      context.handle(_deadlineMeta,
          deadline.isAcceptableOrUnknown(data['deadline'], _deadlineMeta));
    } else if (isInserting) {
      context.missing(_deadlineMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ToDo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ToDo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ToDosTable createAlias(String alias) {
    return $ToDosTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ToDosTable _toDos;
  $ToDosTable get toDos => _toDos ??= $ToDosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [toDos];
}
