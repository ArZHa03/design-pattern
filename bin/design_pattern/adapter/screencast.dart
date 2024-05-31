part of catalog_adapter;

class ScreenCast {
  String _title;
  String _author;
  String _duration;

  ScreenCast(this._title, this._author, this._duration);

  String get title => _title;

  String get author => _author;

  String get duration => _duration;

  set title(String title) => _title = title;

  set author(String author) => _author = author;

  set duration(String duration) => _duration = duration;
}
