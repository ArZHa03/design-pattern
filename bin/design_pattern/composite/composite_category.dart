library composite_category;

part 'category.dart';

class CompositeCategory extends Category {
  List<Category> _categories = [];

  CompositeCategory(String name, [List<Category> categories = const []]) : super(name) {
    _categories.addAll(categories);
  }

  List<Category> get categories => _categories;

  set categories(List<Category> categories) => _categories = categories;
}
