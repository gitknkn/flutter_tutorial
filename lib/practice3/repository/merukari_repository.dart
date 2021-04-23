import 'package:youtube_demo/practice3/model/product_data_result.dart';
import 'package:youtube_demo/practice3/url/merukari_hosting_url.dart';

class MerukariRepository {
  MerukariHostingUrl _url = MerukariHostingUrl.create();

  Future<ProductDataResult> fetchProductData() async {
    return await _url.fetchProductDataList();
  }
}
