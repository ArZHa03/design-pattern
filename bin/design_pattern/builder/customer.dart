library customer_builder;

part 'customer_builder.dart';

class _Customer {
  final String? _name;
  final String? _address;
  final String? _phone;
  final String? _email;

  _Customer(this._name, this._address, this._phone, this._email);

  String get name => _name!;

  String get address => _address!;

  String get phone => _phone!;

  String get email => _email!;
}
