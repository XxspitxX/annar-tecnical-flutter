//@GeneratedMicroModule;DomainPackageModule;package:domain/di/domain_di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i687;

import 'package:domain/add_product_use_case.dart' as _i608;
import 'package:domain/get_products_use_case.dart' as _i444;
import 'package:injectable/injectable.dart' as _i526;

class DomainPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i608.AddProductUseCase>(
        () => _i608.AddProductUseCaseAdapter(gh<_i608.AddProductRepository>()));
    gh.factory<_i444.GetProductsUseCase>(() =>
        _i444.GetProductsUseCaseAdapter(gh<_i444.GetProductsRepository>()));
  }
}
