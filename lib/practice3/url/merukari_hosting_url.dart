import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:youtube_demo/practice3/model/product_data_result.dart';

part 'merukari_hosting_url.g.dart';

@RestApi(baseUrl: "https://hosting-json-cffb5.web.app")
abstract class MerukariHostingUrl {
  factory MerukariHostingUrl(Dio dio, {String baseUrl}) = _MerukariHostingUrl;

  static MerukariHostingUrl create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return MerukariHostingUrl(dio);
  }

  @GET("/tutorial/merukari.json")
  Future<ProductDataResult> fetchProductDataList();
}
