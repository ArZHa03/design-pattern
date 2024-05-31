library animal_factory_method;

part 'animal_factory.dart';

abstract class _Animal {
  void speak();
}

class _Dog implements _Animal {
  @override
  void speak() => print('Dog says: Woof Woof');
}

class _Cat implements _Animal {
  @override
  void speak() => print('Cat says: Meow Meow');
}

class _Tiger implements _Animal {
  @override
  void speak() => print('Tiger says: Roar');
}
