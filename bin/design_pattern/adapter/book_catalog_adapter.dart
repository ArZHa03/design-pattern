part of catalog_adapter;

class BookCatalogAdapter implements CatalogAdapter {
  final Book _book;

  BookCatalogAdapter(this._book);

  @override
  String get catalogTitle => _book.title + ' by ' + _book.author;
}
