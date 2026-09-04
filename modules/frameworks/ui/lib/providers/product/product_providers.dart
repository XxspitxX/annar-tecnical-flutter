import 'package:domain/get_products_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:models/product.dart';

final getProductsUseCaseProvider = Provider<GetProductsUseCase>(
  (ref) => GetIt.instance<GetProductsUseCase>(),
);


class ProductSearchNotifier extends Notifier<String> {
  @override
  String build() => '';

  void update(String value) => state = value;
}

class ProductListNotifier extends AsyncNotifier<List<Product>> {
  @override
  Future<List<Product>> build() => _fetch();

  Future<List<Product>> _fetch() async {
    final response = await ref.read(getProductsUseCaseProvider).get();
    return response?.products ?? const <Product>[];
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }

  void prepend(Product product) {
    final current = state.value ?? const <Product>[];
    state = AsyncValue.data(<Product>[product, ...current]);
  }
}

final productListProvider =
    AsyncNotifierProvider<ProductListNotifier, List<Product>>(
  ProductListNotifier.new,
);
