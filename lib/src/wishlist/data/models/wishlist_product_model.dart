// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ecom/src/wishlist/domain/entities/wishlist_product.dart';

class WishlistProductModel extends WishlistProduct {
  const WishlistProductModel({
    required super.productId,
    required super.productName,
    required super.productImage,
    required super.productPrice,
    required super.productExists,
    required super.productOutOfStock,
  });

  const WishlistProductModel.empty()
    : this(
        productId: 'Test',
        productName: 'Test',
        productImage: 'Test',
        productPrice: 1,
        productExists: true,
        productOutOfStock: true,
      );

  WishlistProductModel copyWith({
    String? productId,
    String? productName,
    String? productImage,
    double? productPrice,
    bool? productExists,
    bool? productOutOfStock,
  }) {
    return WishlistProductModel(
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productImage: productImage ?? this.productImage,
      productPrice: productPrice ?? this.productPrice,
      productExists: productExists ?? this.productExists,
      productOutOfStock: productOutOfStock ?? this.productOutOfStock,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'productName': productName,
      'productImage': productImage,
      'productPrice': productPrice,
      'productExists': productExists,
      'productOutOfStock': productOutOfStock,
    };
  }

  factory WishlistProductModel.fromMap(Map<String, dynamic> map) {
    return WishlistProductModel(
      productId: map['productId'] as String,
      productName: map['productName'] as String,
      productImage: map['productImage'] as String,
      productPrice: map['productPrice'] as double,
      productExists: map['productExists'] as bool,
      productOutOfStock: map['productOutOfStock'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory WishlistProductModel.fromJson(String source) =>
      WishlistProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WishlistProductModel(productId: $productId, productName: $productName, productImage: $productImage, productPrice: $productPrice, productExists: $productExists, productOutOfStock: $productOutOfStock)';
  }

  @override
  bool operator ==(covariant WishlistProductModel other) {
    if (identical(this, other)) return true;

    return other.productId == productId &&
        other.productName == productName &&
        other.productImage == productImage &&
        other.productPrice == productPrice &&
        other.productExists == productExists &&
        other.productOutOfStock == productOutOfStock;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
        productName.hashCode ^
        productImage.hashCode ^
        productPrice.hashCode ^
        productExists.hashCode ^
        productOutOfStock.hashCode;
  }

  @override
  List<Object> get props => [
    productId,
    productName,
    productImage,
    productPrice,
    productExists,
    productOutOfStock,
  ];
}
