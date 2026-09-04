// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddProductRequest {

 String get title; String? get description; String? get category; double? get price; int? get stock; String? get brand; String? get sku;
/// Create a copy of AddProductRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddProductRequestCopyWith<AddProductRequest> get copyWith => _$AddProductRequestCopyWithImpl<AddProductRequest>(this as AddProductRequest, _$identity);

  /// Serializes this AddProductRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddProductRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.sku, sku) || other.sku == sku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,category,price,stock,brand,sku);

@override
String toString() {
  return 'AddProductRequest(title: $title, description: $description, category: $category, price: $price, stock: $stock, brand: $brand, sku: $sku)';
}


}

/// @nodoc
abstract mixin class $AddProductRequestCopyWith<$Res>  {
  factory $AddProductRequestCopyWith(AddProductRequest value, $Res Function(AddProductRequest) _then) = _$AddProductRequestCopyWithImpl;
@useResult
$Res call({
 String title, String? description, String? category, double? price, int? stock, String? brand, String? sku
});




}
/// @nodoc
class _$AddProductRequestCopyWithImpl<$Res>
    implements $AddProductRequestCopyWith<$Res> {
  _$AddProductRequestCopyWithImpl(this._self, this._then);

  final AddProductRequest _self;
  final $Res Function(AddProductRequest) _then;

/// Create a copy of AddProductRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? category = freezed,Object? price = freezed,Object? stock = freezed,Object? brand = freezed,Object? sku = freezed,}) {
  return _then(AddProductRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddProductRequest].
extension AddProductRequestPatterns on AddProductRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddProductRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddProductRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddProductRequest value)  $default,){
final _that = this;
switch (_that) {
case _AddProductRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddProductRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AddProductRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description,  String? category,  double? price,  int? stock,  String? brand,  String? sku)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddProductRequest() when $default != null:
return $default(_that.title,_that.description,_that.category,_that.price,_that.stock,_that.brand,_that.sku);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description,  String? category,  double? price,  int? stock,  String? brand,  String? sku)  $default,) {final _that = this;
switch (_that) {
case _AddProductRequest():
return $default(_that.title,_that.description,_that.category,_that.price,_that.stock,_that.brand,_that.sku);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description,  String? category,  double? price,  int? stock,  String? brand,  String? sku)?  $default,) {final _that = this;
switch (_that) {
case _AddProductRequest() when $default != null:
return $default(_that.title,_that.description,_that.category,_that.price,_that.stock,_that.brand,_that.sku);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddProductRequest implements AddProductRequest {
  const _AddProductRequest({required this.title, this.description, this.category, this.price, this.stock, this.brand, this.sku});
  factory _AddProductRequest.fromJson(Map<String, dynamic> json) => _$AddProductRequestFromJson(json);

@override final  String title;
@override final  String? description;
@override final  String? category;
@override final  double? price;
@override final  int? stock;
@override final  String? brand;
@override final  String? sku;

/// Create a copy of AddProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddProductRequestCopyWith<_AddProductRequest> get copyWith => __$AddProductRequestCopyWithImpl<_AddProductRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddProductRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddProductRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.sku, sku) || other.sku == sku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,category,price,stock,brand,sku);

@override
String toString() {
  return 'AddProductRequest(title: $title, description: $description, category: $category, price: $price, stock: $stock, brand: $brand, sku: $sku)';
}


}

/// @nodoc
abstract mixin class _$AddProductRequestCopyWith<$Res> implements $AddProductRequestCopyWith<$Res> {
  factory _$AddProductRequestCopyWith(_AddProductRequest value, $Res Function(_AddProductRequest) _then) = __$AddProductRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, String? category, double? price, int? stock, String? brand, String? sku
});




}
/// @nodoc
class __$AddProductRequestCopyWithImpl<$Res>
    implements _$AddProductRequestCopyWith<$Res> {
  __$AddProductRequestCopyWithImpl(this._self, this._then);

  final _AddProductRequest _self;
  final $Res Function(_AddProductRequest) _then;

/// Create a copy of AddProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? category = freezed,Object? price = freezed,Object? stock = freezed,Object? brand = freezed,Object? sku = freezed,}) {
  return _then(_AddProductRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
