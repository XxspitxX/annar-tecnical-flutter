import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/product.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
abstract class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    @Default(<Product>[]) List<Product> products,
    @Default(0) int total,
    @Default(0) int skip,
    @Default(0) int limit,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}
