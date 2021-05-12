// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TargetMoneyInfoData extends DataClass
    implements Insertable<TargetMoneyInfoData> {
  final int id;
  final int targetMoney;
  TargetMoneyInfoData({@required this.id, @required this.targetMoney});
  factory TargetMoneyInfoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return TargetMoneyInfoData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      targetMoney: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}target_money']),
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
    return map;
  }

  TargetMoneyInfoCompanion toCompanion(bool nullToAbsent) {
    return TargetMoneyInfoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      targetMoney: targetMoney == null && nullToAbsent
          ? const Value.absent()
          : Value(targetMoney),
    );
  }

  factory TargetMoneyInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TargetMoneyInfoData(
      id: serializer.fromJson<int>(json['id']),
      targetMoney: serializer.fromJson<int>(json['targetMoney']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'targetMoney': serializer.toJson<int>(targetMoney),
    };
  }

  TargetMoneyInfoData copyWith({int id, int targetMoney}) =>
      TargetMoneyInfoData(
        id: id ?? this.id,
        targetMoney: targetMoney ?? this.targetMoney,
      );
  @override
  String toString() {
    return (StringBuffer('TargetMoneyInfoData(')
          ..write('id: $id, ')
          ..write('targetMoney: $targetMoney')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, targetMoney.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TargetMoneyInfoData &&
          other.id == this.id &&
          other.targetMoney == this.targetMoney);
}

class TargetMoneyInfoCompanion extends UpdateCompanion<TargetMoneyInfoData> {
  final Value<int> id;
  final Value<int> targetMoney;
  const TargetMoneyInfoCompanion({
    this.id = const Value.absent(),
    this.targetMoney = const Value.absent(),
  });
  TargetMoneyInfoCompanion.insert({
    this.id = const Value.absent(),
    @required int targetMoney,
  }) : targetMoney = Value(targetMoney);
  static Insertable<TargetMoneyInfoData> custom({
    Expression<int> id,
    Expression<int> targetMoney,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (targetMoney != null) 'target_money': targetMoney,
    });
  }

  TargetMoneyInfoCompanion copyWith({Value<int> id, Value<int> targetMoney}) {
    return TargetMoneyInfoCompanion(
      id: id ?? this.id,
      targetMoney: targetMoney ?? this.targetMoney,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TargetMoneyInfoCompanion(')
          ..write('id: $id, ')
          ..write('targetMoney: $targetMoney')
          ..write(')'))
        .toString();
  }
}

class $TargetMoneyInfoTable extends TargetMoneyInfo
    with TableInfo<$TargetMoneyInfoTable, TargetMoneyInfoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $TargetMoneyInfoTable(this._db, [this._alias]);
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

  @override
  List<GeneratedColumn> get $columns => [id, targetMoney];
  @override
  $TargetMoneyInfoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'target_money_info';
  @override
  final String actualTableName = 'target_money_info';
  @override
  VerificationContext validateIntegrity(
      Insertable<TargetMoneyInfoData> instance,
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TargetMoneyInfoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TargetMoneyInfoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TargetMoneyInfoTable createAlias(String alias) {
    return $TargetMoneyInfoTable(_db, alias);
  }
}

class AddMoneyInfoData extends DataClass
    implements Insertable<AddMoneyInfoData> {
  final int id;
  final int addMoney;
  final String createdDate;
  AddMoneyInfoData(
      {@required this.id, @required this.addMoney, @required this.createdDate});
  factory AddMoneyInfoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return AddMoneyInfoData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      addMoney:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}add_money']),
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
    if (!nullToAbsent || addMoney != null) {
      map['add_money'] = Variable<int>(addMoney);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<String>(createdDate);
    }
    return map;
  }

  AddMoneyInfoCompanion toCompanion(bool nullToAbsent) {
    return AddMoneyInfoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      addMoney: addMoney == null && nullToAbsent
          ? const Value.absent()
          : Value(addMoney),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
    );
  }

  factory AddMoneyInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AddMoneyInfoData(
      id: serializer.fromJson<int>(json['id']),
      addMoney: serializer.fromJson<int>(json['addMoney']),
      createdDate: serializer.fromJson<String>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'addMoney': serializer.toJson<int>(addMoney),
      'createdDate': serializer.toJson<String>(createdDate),
    };
  }

  AddMoneyInfoData copyWith({int id, int addMoney, String createdDate}) =>
      AddMoneyInfoData(
        id: id ?? this.id,
        addMoney: addMoney ?? this.addMoney,
        createdDate: createdDate ?? this.createdDate,
      );
  @override
  String toString() {
    return (StringBuffer('AddMoneyInfoData(')
          ..write('id: $id, ')
          ..write('addMoney: $addMoney, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(addMoney.hashCode, createdDate.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AddMoneyInfoData &&
          other.id == this.id &&
          other.addMoney == this.addMoney &&
          other.createdDate == this.createdDate);
}

class AddMoneyInfoCompanion extends UpdateCompanion<AddMoneyInfoData> {
  final Value<int> id;
  final Value<int> addMoney;
  final Value<String> createdDate;
  const AddMoneyInfoCompanion({
    this.id = const Value.absent(),
    this.addMoney = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  AddMoneyInfoCompanion.insert({
    this.id = const Value.absent(),
    @required int addMoney,
    @required String createdDate,
  })  : addMoney = Value(addMoney),
        createdDate = Value(createdDate);
  static Insertable<AddMoneyInfoData> custom({
    Expression<int> id,
    Expression<int> addMoney,
    Expression<String> createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (addMoney != null) 'add_money': addMoney,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  AddMoneyInfoCompanion copyWith(
      {Value<int> id, Value<int> addMoney, Value<String> createdDate}) {
    return AddMoneyInfoCompanion(
      id: id ?? this.id,
      addMoney: addMoney ?? this.addMoney,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (addMoney.present) {
      map['add_money'] = Variable<int>(addMoney.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<String>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddMoneyInfoCompanion(')
          ..write('id: $id, ')
          ..write('addMoney: $addMoney, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $AddMoneyInfoTable extends AddMoneyInfo
    with TableInfo<$AddMoneyInfoTable, AddMoneyInfoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $AddMoneyInfoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _addMoneyMeta = const VerificationMeta('addMoney');
  GeneratedIntColumn _addMoney;
  @override
  GeneratedIntColumn get addMoney => _addMoney ??= _constructAddMoney();
  GeneratedIntColumn _constructAddMoney() {
    return GeneratedIntColumn(
      'add_money',
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
  List<GeneratedColumn> get $columns => [id, addMoney, createdDate];
  @override
  $AddMoneyInfoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'add_money_info';
  @override
  final String actualTableName = 'add_money_info';
  @override
  VerificationContext validateIntegrity(Insertable<AddMoneyInfoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('add_money')) {
      context.handle(_addMoneyMeta,
          addMoney.isAcceptableOrUnknown(data['add_money'], _addMoneyMeta));
    } else if (isInserting) {
      context.missing(_addMoneyMeta);
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
  AddMoneyInfoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AddMoneyInfoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AddMoneyInfoTable createAlias(String alias) {
    return $AddMoneyInfoTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TargetMoneyInfoTable _targetMoneyInfo;
  $TargetMoneyInfoTable get targetMoneyInfo =>
      _targetMoneyInfo ??= $TargetMoneyInfoTable(this);
  $AddMoneyInfoTable _addMoneyInfo;
  $AddMoneyInfoTable get addMoneyInfo =>
      _addMoneyInfo ??= $AddMoneyInfoTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [targetMoneyInfo, addMoneyInfo];
}
