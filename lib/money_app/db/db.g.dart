// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MoneyInfoData extends DataClass implements Insertable<MoneyInfoData> {
  final int id;
  final int targetMoney;
  final int currentMoney;
  final int differenceMoney;
  final String createdDate;
  MoneyInfoData(
      {@required this.id,
      @required this.targetMoney,
      @required this.currentMoney,
      @required this.differenceMoney,
      @required this.createdDate});
  factory MoneyInfoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MoneyInfoData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      targetMoney: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}target_money']),
      currentMoney: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}current_money']),
      differenceMoney: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}difference_money']),
      createdDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || targetMoney != null) {
      map['target_money'] = Variable<int>(targetMoney);
    }
    if (!nullToAbsent || currentMoney != null) {
      map['current_money'] = Variable<int>(currentMoney);
    }
    if (!nullToAbsent || differenceMoney != null) {
      map['difference_money'] = Variable<int>(differenceMoney);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<String>(createdDate);
    }
    return map;
  }

  MoneyInfoCompanion toCompanion(bool nullToAbsent) {
    return MoneyInfoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      targetMoney: targetMoney == null && nullToAbsent
          ? const Value.absent()
          : Value(targetMoney),
      currentMoney: currentMoney == null && nullToAbsent
          ? const Value.absent()
          : Value(currentMoney),
      differenceMoney: differenceMoney == null && nullToAbsent
          ? const Value.absent()
          : Value(differenceMoney),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory MoneyInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoneyInfoData(
      id: serializer.fromJson<int>(json['id']),
      targetMoney: serializer.fromJson<int>(json['targetMoney']),
      currentMoney: serializer.fromJson<int>(json['currentMoney']),
      differenceMoney: serializer.fromJson<int>(json['differenceMoney']),
      createdDate: serializer.fromJson<String>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'targetMoney': serializer.toJson<int>(targetMoney),
      'currentMoney': serializer.toJson<int>(currentMoney),
      'differenceMoney': serializer.toJson<int>(differenceMoney),
      'createdDate': serializer.toJson<String>(createdDate),
    };
  }

  MoneyInfoData copyWith(
          {int id,
          int targetMoney,
          int currentMoney,
          int differenceMoney,
          String createdDate}) =>
      MoneyInfoData(
        id: id ?? this.id,
        targetMoney: targetMoney ?? this.targetMoney,
        currentMoney: currentMoney ?? this.currentMoney,
        differenceMoney: differenceMoney ?? this.differenceMoney,
        createdDate: createdDate ?? this.createdDate,
      );
  @override
  String toString() {
    return (StringBuffer('MoneyInfoData(')
          ..write('id: $id, ')
          ..write('targetMoney: $targetMoney, ')
          ..write('currentMoney: $currentMoney, ')
          ..write('differenceMoney: $differenceMoney, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          targetMoney.hashCode,
          $mrjc(currentMoney.hashCode,
              $mrjc(differenceMoney.hashCode, createdDate.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoneyInfoData &&
          other.id == this.id &&
          other.targetMoney == this.targetMoney &&
          other.currentMoney == this.currentMoney &&
          other.differenceMoney == this.differenceMoney &&
          other.createdDate == this.createdDate);
}

class MoneyInfoCompanion extends UpdateCompanion<MoneyInfoData> {
  final Value<int> id;
  final Value<int> targetMoney;
  final Value<int> currentMoney;
  final Value<int> differenceMoney;
  final Value<String> createdDate;
  const MoneyInfoCompanion({
    this.id = const Value.absent(),
    this.targetMoney = const Value.absent(),
    this.currentMoney = const Value.absent(),
    this.differenceMoney = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  MoneyInfoCompanion.insert({
    this.id = const Value.absent(),
    @required int targetMoney,
    @required int currentMoney,
    @required int differenceMoney,
    @required String createdDate,
  })  : targetMoney = Value(targetMoney),
        currentMoney = Value(currentMoney),
        differenceMoney = Value(differenceMoney),
        createdDate = Value(createdDate);
  static Insertable<MoneyInfoData> custom({
    Expression<int> id,
    Expression<int> targetMoney,
    Expression<int> currentMoney,
    Expression<int> differenceMoney,
    Expression<String> createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (targetMoney != null) 'target_money': targetMoney,
      if (currentMoney != null) 'current_money': currentMoney,
      if (differenceMoney != null) 'difference_money': differenceMoney,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  MoneyInfoCompanion copyWith(
      {Value<int> id,
      Value<int> targetMoney,
      Value<int> currentMoney,
      Value<int> differenceMoney,
      Value<String> createdDate}) {
    return MoneyInfoCompanion(
      id: id ?? this.id,
      targetMoney: targetMoney ?? this.targetMoney,
      currentMoney: currentMoney ?? this.currentMoney,
      differenceMoney: differenceMoney ?? this.differenceMoney,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (targetMoney.present) {
      map['target_money'] = Variable<int>(targetMoney.value);
    }
    if (currentMoney.present) {
      map['current_money'] = Variable<int>(currentMoney.value);
    }
    if (differenceMoney.present) {
      map['difference_money'] = Variable<int>(differenceMoney.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<String>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoneyInfoCompanion(')
          ..write('id: $id, ')
          ..write('targetMoney: $targetMoney, ')
          ..write('currentMoney: $currentMoney, ')
          ..write('differenceMoney: $differenceMoney, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $MoneyInfoTable extends MoneyInfo
    with TableInfo<$MoneyInfoTable, MoneyInfoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoneyInfoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _targetMoneyMeta =
      const VerificationMeta('targetMoney');
  GeneratedIntColumn _targetMoney;
  @override
  GeneratedIntColumn get targetMoney =>
      _targetMoney ??= _constructTargetMoney();
  GeneratedIntColumn _constructTargetMoney() {
    return GeneratedIntColumn(
      'target_money',
      $tableName,
      false,
    );
  }

  final VerificationMeta _currentMoneyMeta =
      const VerificationMeta('currentMoney');
  GeneratedIntColumn _currentMoney;
  @override
  GeneratedIntColumn get currentMoney =>
      _currentMoney ??= _constructCurrentMoney();
  GeneratedIntColumn _constructCurrentMoney() {
    return GeneratedIntColumn(
      'current_money',
      $tableName,
      false,
    );
  }

  final VerificationMeta _differenceMoneyMeta =
      const VerificationMeta('differenceMoney');
  GeneratedIntColumn _differenceMoney;
  @override
  GeneratedIntColumn get differenceMoney =>
      _differenceMoney ??= _constructDifferenceMoney();
  GeneratedIntColumn _constructDifferenceMoney() {
    return GeneratedIntColumn(
      'difference_money',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  GeneratedTextColumn _createdDate;
  @override
  GeneratedTextColumn get createdDate =>
      _createdDate ??= _constructCreatedDate();
  GeneratedTextColumn _constructCreatedDate() {
    return GeneratedTextColumn(
      'created_date',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, targetMoney, currentMoney, differenceMoney, createdDate];
  @override
  $MoneyInfoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'money_info';
  @override
  final String actualTableName = 'money_info';
  @override
  VerificationContext validateIntegrity(Insertable<MoneyInfoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('target_money')) {
      context.handle(
          _targetMoneyMeta,
          targetMoney.isAcceptableOrUnknown(
              data['target_money'], _targetMoneyMeta));
    } else if (isInserting) {
      context.missing(_targetMoneyMeta);
    }
    if (data.containsKey('current_money')) {
      context.handle(
          _currentMoneyMeta,
          currentMoney.isAcceptableOrUnknown(
              data['current_money'], _currentMoneyMeta));
    } else if (isInserting) {
      context.missing(_currentMoneyMeta);
    }
    if (data.containsKey('difference_money')) {
      context.handle(
          _differenceMoneyMeta,
          differenceMoney.isAcceptableOrUnknown(
              data['difference_money'], _differenceMoneyMeta));
    } else if (isInserting) {
      context.missing(_differenceMoneyMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date'], _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoneyInfoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoneyInfoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoneyInfoTable createAlias(String alias) {
    return $MoneyInfoTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MoneyInfoTable _moneyInfo;
  $MoneyInfoTable get moneyInfo => _moneyInfo ??= $MoneyInfoTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [moneyInfo];
}
