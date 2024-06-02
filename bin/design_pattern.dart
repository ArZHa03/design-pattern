import 'design_pattern/abstract_factory/game_factory.dart';
import 'design_pattern/adapter/catalog_adapter.dart';
import 'design_pattern/bridge/binatang.dart';
import 'design_pattern/builder/customer.dart';
import 'design_pattern/composite/composite_category.dart';
import 'design_pattern/facade/order_facade.dart';
import 'design_pattern/factory_method/animal.dart';
import 'design_pattern/factory_method/employee.dart';
import 'design_pattern/prototype/store.dart';
import 'design_pattern/singleton/crud_item.dart';
import 'design_pattern/template_method/block_game_template.dart';

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

  print('\nFacade');
  OrderFacade().orderProduct();

  print('\nTemplate Method');
  BlockGameA().start();
  BlockGameZ().start();

  print('\nBridge');
  final List<Binatang> binatang = [
    Anjing(),
    Hiu(),
    Kambing(),
    Koi(),
    Kucing(),
    Lele(),
  ];
  binatang.forEach((b) {
    if (b is BinatangDarat) {
      print('${b.getNama} adalah binatang yang hidup di darat dengan jumlah kaki ${b.jumlahKaki}');
    } else if (b is BinatangAir) {
      print('${b.getNama} adalah binatang yang hidup di air');
    }
  });

  print('\nComposite');
  List<Category> categories = [
    CompositeCategory('Category A', [
      Category('Category A1'),
      Category('Category A2'),
      Category('Category A3'),
    ]),
    CompositeCategory('Category B', [
      Category('Category B1'),
      Category('Category B2'),
      Category('Category B3'),
    ]),
    Category('Category C'),
    CompositeCategory('Category D', [
      CompositeCategory('Category D1', [
        Category('Category D1.1'),
        Category('Category D1.2'),
      ]),
      Category('Category D2'),
    ]),
  ];
  printCategories(categories);
}

void printCategories(List<Category> categories, [String prefix = '']) {
  for (var category in categories) {
    print('$prefix${category.name}');
    if (category is CompositeCategory) {
      // Recursive call
      printCategories(category.categories, '$prefix  ');
    }
  }
}
