import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:youtube_demo/practice1/model/movie_info_result.dart';

part 'youtube_hosting_https.g.dart';

@RestApi(baseUrl: "https://hosting-json-cffb5.web.app") //ベースUrlを記載
abstract class YoutubeHostingHttps {
  factory YoutubeHostingHttps(Dio dio, {String baseUrl}) = _YoutubeHostingHttps;

  static YoutubeHostingHttps create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return YoutubeHostingHttps(dio);
  }

  @GET("/tutorial/youtube.json")
  Future<MovieInfoResult> fetchMovieInfoDataList(); //エンドポイントはベースurlの続き
}
