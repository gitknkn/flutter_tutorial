// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sumo_hosting_url.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _SumoHostingUrl implements SumoHostingUrl {
  _SumoHostingUrl(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://hosting-json-cffb5.web.app';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<HouseDataResult> fetchHouseDataList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/tutorial/sumo.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = HouseDataResult.fromJson(_result.data);
    return value;
  }
}
