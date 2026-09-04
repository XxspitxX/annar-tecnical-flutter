import 'package:data/base/api_source.dart';
import 'package:data/base/simple_post_repository.dart';
import 'package:domain/add_product_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:models/add_product_request.dart';
import 'package:models/product.dart';

mixin AddProductApiSource on PostApiSource<AddProductRequest, Product> {}

@Injectable(as: AddProductRepository)
class AddProductRepositoryAdapter
    with SimplePostRepositoryAdapter<AddProductRequest, Product>
    implements AddProductRepository {
  @override
  final AddProductApiSource apiSource;

  AddProductRepositoryAdapter(this.apiSource);
}
