import 'package:data/base/api_source.dart';
import 'package:data/base/simple_get_repository.dart';
import 'package:domain/get_products_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:models/product_list_response.dart';

mixin GetProductsApiSource on GetApiSource<ProductListResponse> {}

@Injectable(as: GetProductsRepository)
class GetProductsRepositoryAdapter
    with SimpleGetRepositoryAdapter<ProductListResponse>
    implements GetProductsRepository {
  @override
  final GetProductsApiSource apiSource;

  GetProductsRepositoryAdapter(this.apiSource);
}
