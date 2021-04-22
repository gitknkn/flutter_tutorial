import 'package:youtube_demo/practice1/https/youtube_hosting_https.dart';
import 'package:youtube_demo/practice1/model/movie_info_result.dart';

class YoutubeRepository {
  YoutubeHostingHttps _https = YoutubeHostingHttps.create();

  Future<MovieInfoResult> fetchMovieInfoData() async {
    return await _https.fetchMovieInfoDataList();
  }
}
