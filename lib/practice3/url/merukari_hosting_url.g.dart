// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merukari_hosting_url.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MerukariHostingUrl implements MerukariHostingUrl {
  _MerukariHostingUrl(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://hosting-json-cffb5.web.app';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ProductDataResult> fetchProductDataList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/tutorial/merukari.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ProductDataResult.fromJson(_result.data);
    return value;
  }
}
