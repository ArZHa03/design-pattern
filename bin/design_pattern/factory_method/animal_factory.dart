part of animal_factory_method;

class AnimalFactory {
  static _Animal createAnimal(String type) {
    switch (type) {
      case 'Dog':
        return _Dog();
      case 'Cat':
        return _Cat();
      case 'Tiger':
        return _Tiger();
      default:
        throw 'Animal type $type is not supported';
    }
  }
}
