import 'package:domain/base/simple_post_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:models/add_product_request.dart';
import 'package:models/product.dart';

mixin AddProductRepository
    on SimplePostRepository<AddProductRequest, Product> {}

mixin AddProductUseCase on SimplePostUseCase<AddProductRequest, Product> {}

@Injectable(as: AddProductUseCase)
class AddProductUseCaseAdapter
    with SimplePostUseCaseAdapter<AddProductRequest, Product>
    implements AddProductUseCase {
  @override
  final AddProductRepository repository;

  AddProductUseCaseAdapter(this.repository);
}
