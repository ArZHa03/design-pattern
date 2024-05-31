library employee_factory_method;

part 'employee_factory.dart';

class _Employee {
  final String _name;
  final String _position;
  final int _salary;

  _Employee(this._name, this._position, this._salary);

  String get name => _name;

  String get position => _position;

  int get salary => _salary;

  String get info => '$_name is a $_position with salary $_salary';
}
