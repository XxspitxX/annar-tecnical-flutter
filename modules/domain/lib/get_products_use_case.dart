import 'package:domain/base/simple_get_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:models/product_list_response.dart';

mixin GetProductsRepository on SimpleGetRepository<ProductListResponse> {}

mixin GetProductsUseCase on SimpleGetUseCase<ProductListResponse> {}

@Injectable(as: GetProductsUseCase)
class GetProductsUseCaseAdapter
    with SimpleGetUseCaseAdapter<ProductListResponse>
    implements GetProductsUseCase {
  @override
  final GetProductsRepository repository;

  GetProductsUseCaseAdapter(this.repository);
}
