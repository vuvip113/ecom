// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ecom/core/common/enitites/address.dart';

class AddressModel extends Address {
  const AddressModel({
    String? street,
    String? apartment,
    String? city,
    String? postalCode,
    String? country,
  }) : super(street, apartment, city, postalCode, country);

  const AddressModel.empty()
    : this(
        street: 'Test String',
        apartment: 'Test String',
        city: 'Test String',
        postalCode: 'Test String',
        country: 'Test String',
      );

  AddressModel copyWith({
    String? street,
    String? apartment,
    String? city,
    String? postalCode,
    String? country,
  }) {
    return AddressModel(
      street: street ?? this.street,
      apartment: apartment ?? this.apartment,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      country: country ?? this.country,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street,
      'apartment': apartment,
      'city': city,
      'postalCode': postalCode,
      'country': country,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      street: map['street'] as String?,
      apartment: map['apartment'] as String?,
      city: map['city'] as String?,
      postalCode: map['postalCode'] as String?,
      country: map['country'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
