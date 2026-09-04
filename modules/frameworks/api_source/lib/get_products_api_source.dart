import 'package:api_source/base/api_source.dart';
import 'package:api_source/utils/api_path.dart';
import 'package:data/get_products_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:models/product_list_response.dart';

@Injectable(as: GetProductsApiSource)
class GetProductsApiSourceAdapter implements GetProductsApiSource {
  final ApiSource _apiSource;

  GetProductsApiSourceAdapter(this._apiSource);

  @override
  Future<ProductListResponse?> get([Map? args]) {
    final limit = args?['limit'];
    final skip = args?['skip'];

    final queryParameters = <String, dynamic>{
      if (limit != null) 'limit': limit,
      if (skip != null) 'skip': skip,
    };

    return _apiSource.getApi(
      ApiPaths.getProducts,
      (response) => ProductListResponse.fromJson(response),
      queryParameters: queryParameters.isEmpty ? null : queryParameters,
    );
  }
}
