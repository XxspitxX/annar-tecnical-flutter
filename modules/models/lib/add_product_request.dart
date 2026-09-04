import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_request.freezed.dart';
part 'add_product_request.g.dart';

/// Body sent to `POST /products/add`.
@freezed
abstract class AddProductRequest with _$AddProductRequest {
  const factory AddProductRequest({
    required String title,
    String? description,
    String? category,
    double? price,
    int? stock,
    String? brand,
    String? sku,
  }) = _AddProductRequest;

  factory AddProductRequest.fromJson(Map<String, dynamic> json) =>
      _$AddProductRequestFromJson(json);
}
