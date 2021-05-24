import 'package:youtube_demo/money_app/db/db.dart';

class MoneyInfoRepository {
  Database _myDatabase;

  MoneyInfoRepository() {
    _myDatabase = Database.getInstance();
  }

  // ここから TargetMoneyInfo
  // 一行のみデーターを取得
  Future<TargetMoneyInfoData> getTargetMoneyInfoData(int id) async {
    return await _myDatabase.getTargetMoneyInfo(id);
  }

  // 追加
  Future createTargetMoneyInfoData(TargetMoneyInfoData data) async {
    return await _myDatabase.createTargetMoneyInfo(data);
  }

  //削除
  Future<int> deleteTargetMoneyInfoData(int id) async {
    return await _myDatabase.deleteTargetMoneyInfo(id);
  }
  // ここまで TargetMoneyInfo

  // ここから AddMoneyInfo
  // AddMoneyInfoの全てのデーター取得
  Future<List<AddMoneyInfoData>> allAddMoneyInfoData() async {
    return await _myDatabase.allAddMoneyInfo();
  }

  // 追加
  Future createAddMoneyInfoData(AddMoneyInfoData data) async {
    return await _myDatabase.createAddMoneyInfo(data);
  }

  // 削除
  Future deleteAddMoneyInfoData(int id) async {
    return await _myDatabase.deleteAddMoneyInfo(id);
  }

  // 全件削除
  Future allDeleteAddMoneyInfoData() async {
    return await _myDatabase.allDeleteAddMoneyInfo();
  }
  // ここまで AddMoneyInfo

  // 差額金額のロジック
  Future<int> getTotalAddMoney() async {
    final list = await _myDatabase.allAddMoneyInfo();
    int savingMoney = 0;
    for (int i = 0; i < list.length; i++) {
      savingMoney += list[i].addMoney;
    }
    return savingMoney;
  }
}
