import 'dart:convert';

import 'package:ecom/core/common/enitites/address.dart';
import 'package:ecom/core/common/enitites/user.dart';
import 'package:ecom/core/utils/tydefs.dart';
import 'package:ecom/core/models/address_model.dart';
import 'package:ecom/src/wishlist/data/models/wishlist_product_model.dart';
import 'package:ecom/src/wishlist/domain/entities/wishlist_product.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.isAdmin,
    required super.wishlist,
    super.address,
    super.phone,
  });

  UserModel.empty()
    : this(
        id: 'Test String',
        name: 'Test String',
        email: 'Test String',
        isAdmin: true,
        wishlist: const [],
        address: null,
        phone: null,
      );

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    bool? isAdmin,
    List<WishlistProduct>? wishlist,
    Address? address,
    String? phone,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      isAdmin: isAdmin ?? this.isAdmin,
      wishlist: wishlist ?? this.wishlist,
      address: address ?? this.address,
      phone: phone ?? this.phone,
    );
  }

  DataMap toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'isAdmin': isAdmin,
      'wishlist': wishlist
          .map((product) => (product as WishlistProductModel).toMap())
          .toList(),
      if (address != null) 'address': (address as AddressModel).toMap(),
      if (phone != null) 'phone': phone,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: (map['id'] ?? map['_id']) as String,
      name: map['name'] as String,
      email: map['email'] as String,
      isAdmin: map['isAdmin'] as bool,
      wishlist: (map['wishlist'] as List<dynamic>)
          .map((e) => WishlistProductModel.fromMap(e as Map<String, dynamic>))
          .toList(),
      address: map['address'] != null
          ? AddressModel.fromMap(map['address'] as Map<String, dynamic>)
          : null,
      phone: map['phone'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
