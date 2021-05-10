import 'package:youtube_demo/money_app/db/db.dart';

class MoneyInfoRepository {
  Database _myDatabase;

  MoneyInfoRepository() {
    _myDatabase = Database.getInstance();
  }

  // MoneyInfoの全てのデーター取得
  Future<List<MoneyInfoData>> allMoneyInfoData() async {
    return await _myDatabase.allMoneyInfo();
  }

  // 追加
  Future createMoneyInfoData(MoneyInfoData data) async {
    return await _myDatabase.createMoneyInfo(data);
  }

  // 削除
  Future deleteMoneyInfoData(int id) async {
    return await _myDatabase.deleteMoneyInfo(id);
  }
}
