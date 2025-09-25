import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String? street;
  final String? apartment;
  final String? city;
  final String? postalCode;
  final String? country;

  const Address(
    this.street,
    this.apartment,
    this.city,
    this.postalCode,
    this.country,
  );

  bool get isEmpty =>
      street == null &&
      apartment == null &&
      city == null &&
      postalCode == null &&
      country == null;

  bool get isNotEmpty => !isEmpty;

  const Address.empty()
    : street = 'Test String',
      apartment = 'Test String',
      city = 'Test String',
      postalCode = 'Test String',
      country = 'Test String';

  @override
  List<Object?> get props {
    return [street, apartment, city, postalCode, country];
  }
}
