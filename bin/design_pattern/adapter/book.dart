part of catalog_adapter;

class Book {
  String _title;
  String _author;

  Book(this._title, this._author);

  String get title => _title;

  String get author => _author;

  set title(String title) => _title = title;

  set author(String author) => _author = author;
}
