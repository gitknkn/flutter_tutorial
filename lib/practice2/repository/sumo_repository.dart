import 'package:youtube_demo/practice2/model/house_data_result.dart';
import 'package:youtube_demo/practice2/url/sumo_hosting_url.dart';

class SumoRepository {
  SumoHostingUrl _url = SumoHostingUrl.create();

  Future<HouseDataResult> fetchHouseData() async {
    return await _url.fetchHouseDataList();
  }
}
