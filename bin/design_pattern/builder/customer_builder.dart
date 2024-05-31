part of customer_builder;

class CustomerBuilder {
  String _name = '';
  String _email = '';
  String _phone = '';
  String _address = '';

  CustomerBuilder setName(String name) {
    _name = name;
    return this;
  }

  CustomerBuilder setEmail(String email) {
    _email = email;
    return this;
  }

  CustomerBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  CustomerBuilder setAddress(String address) {
    _address = address;
    return this;
  }

  _Customer build() => _Customer(_name, _email, _phone, _address);

  String get info => 'Name: $_name, Email: $_email, Phone: $_phone, Address: $_address';
}
