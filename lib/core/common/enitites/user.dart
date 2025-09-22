import 'package:ecom/core/common/enitites/address.dart';

class User {
  final String id;
  final String name;
  final String email;
  final bool isAdmin;
  final List<WishlistProduct> wishlist;
  final Address? address;
  final String? phone;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.isAdmin,
    required this.wishlist,
    required this.address,
    required this.phone,
  });

  const User.empty()
    : id = 'Test String',
      name = 'Test String',
      email = 'Test String',
      isAdmin = true,
      wishlist = const [],
      address = null,
      phone = null;

  @override
  List<Object?> get props => [id, name, email, isAdmin, wishlist.length];
}

class WishlistProduct {}
