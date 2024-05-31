part of catalog_adapter;

class ScreenCastCatalogAdapter implements CatalogAdapter {
  final ScreenCast _screenCast;

  ScreenCastCatalogAdapter(this._screenCast);

  @override
  String get catalogTitle => _screenCast.title + ' by ' + _screenCast.author;
}
