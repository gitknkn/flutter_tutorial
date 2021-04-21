// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_hosting_https.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _YoutubeHostingHttps implements YoutubeHostingHttps {
  _YoutubeHostingHttps(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://hosting-json-cffb5.web.app';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<MovieInfoResult> fetchMovieInfoDataList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/tutorial/youtube.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MovieInfoResult.fromJson(_result.data);
    return value;
  }
}
