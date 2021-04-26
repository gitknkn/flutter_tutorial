import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:youtube_demo/practice2/model/house_data_result.dart';

part 'sumo_hosting_url.g.dart';

@RestApi(baseUrl: "https://hosting-json-cffb5.web.app")
abstract class SumoHostingUrl {
  factory SumoHostingUrl(Dio dio, {String baseUrl}) = _SumoHostingUrl;

  static SumoHostingUrl create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return SumoHostingUrl(dio);
  }

  @GET("/tutorial/sumo.json")
  Future<HouseDataResult> fetchHouseDataList();
}
