// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class WishlistProduct extends Equatable {
  final String productId;
  final String productName;
  final String productImage;
  final double productPrice;
  final bool productExists;
  final bool productOutOfStock;
  const WishlistProduct({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productExists,
    required this.productOutOfStock,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      productId,
      productName,
      productImage,
      productPrice,
      productExists,
      productOutOfStock,
    ];
  }

  const WishlistProduct.empty()
    : productId = 'Test',
      productName = 'Test',
      productImage = 'Test',
      productPrice = 1,
      productExists = true,
      productOutOfStock = true;
}
