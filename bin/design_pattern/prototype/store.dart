class Store {
  String _name;
  String _city;
  String _country;
  String _category;

  Store(this._name, this._city, this._country, this._category);

  String get name => _name;

  String get city => _city;

  String get country => _country;

  String get category => _category;

  set name(String name) => _name = name;

  set city(String city) => _city = city;

  set country(String country) => _country = country;

  set category(String category) => _category = category;

  Store clone() => Store(_name, _city, _country, _category);

  String get info => 'Store: $_name, $_city, $_country, $_category';
}
