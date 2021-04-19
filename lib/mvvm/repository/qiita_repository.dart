import 'package:youtube_demo/mvvm/api/qiita_api_client.dart';
import 'package:youtube_demo/mvvm/model/qiita_item.dart';

class QiitaRepository {
  QiitaApiClient _api = QiitaApiClient.create();

  Future<List<QiitaItem>> fetchQiitaItems(String tag) async {
    return await _api.fetchQiitaItems(tag);
  }
}