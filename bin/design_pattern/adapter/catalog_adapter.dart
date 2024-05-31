library catalog_adapter;

part 'book.dart';
part 'book_catalog_adapter.dart';
part 'screencast.dart';
part 'screencast_catalog_adapter.dart';

abstract class CatalogAdapter {
  String get catalogTitle;
}
