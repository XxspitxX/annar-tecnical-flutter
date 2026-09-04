import 'package:api_source/base/api_source.dart';
import 'package:api_source/utils/api_path.dart';
import 'package:data/add_product_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:models/add_product_request.dart';
import 'package:models/product.dart';

@Injectable(as: AddProductApiSource)
class AddProductApiSourceAdapter implements AddProductApiSource {
  final ApiSource _apiSource;

  AddProductApiSourceAdapter(this._apiSource);

  @override
  Future<Product> post(AddProductRequest request, [Map<dynamic, dynamic>? args]) {
    return _apiSource.postApi(
      ApiPaths.addProducts,
      (response) => Product.fromJson(response),
      data: request.toJson(),
      options: Options(headers: ApiPaths.headers),
    );
  }

}
