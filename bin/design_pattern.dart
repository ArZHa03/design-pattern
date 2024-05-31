import 'design_pattern/abstract_factory/game_factory.dart';
import 'design_pattern/adapter/catalog_adapter.dart';
import 'design_pattern/builder/customer.dart';
import 'design_pattern/factory_method/animal.dart';
import 'design_pattern/factory_method/employee.dart';
import 'design_pattern/prototype/store.dart';
import 'design_pattern/singleton/crud_item.dart';

void main() {
  print('\nSingleton');
  CRUDItem().create();
  CRUDItem().read();
  CRUDItem().update();
  CRUDItem().delete();

  print('\nBuilder');
  final customer = CustomerBuilder()
    ..setName('John Doe')
    ..setEmail('john.doe@gmail.com')
    ..setPhone('1234567890')
    ..setAddress('123 Main Street')
    ..build();
  print(customer.info);

  print('\nFactory Method Employee');
  final employeeManager = EmployeeFactory.createManager('John Doe');
  final employeeStaff = EmployeeFactory.createStaff('Jane Doe');
  final employeeIntern = EmployeeFactory.createIntern('John Smith');
  print('Manager: ${employeeManager.info}');
  print('Staff: ${employeeStaff.info}');
  print('Intern: ${employeeIntern.info}');

  print('\nFactory Method Animal');
  AnimalFactory.createAnimal('Dog').speak();
  AnimalFactory.createAnimal('Cat').speak();
  AnimalFactory.createAnimal('Tiger').speak();

  print('\nAbstract Factory');
  Game(EasyGameFactory()).start();
  Game(MediumGameFactory()).start();
  Game(HardGameFactory()).start();

  print('\nPrototype');
  final storeX = Store('Store X', 'City X', 'Country X', 'Category X');
  final storeY = storeX.clone()..name = 'Store Y';
  print(storeX.info);
  print(storeY.info);

  print('\nAdapter');
  List<CatalogAdapter> list = [];
  list.add(BookCatalogAdapter(Book('Book A', 'Author A')));
  list.add(ScreenCastCatalogAdapter(ScreenCast('Screencast B', 'Author B', 'Duration B')));
  list.forEach((adapter) => print(adapter.catalogTitle));
}
