class CRUDItem {
  static final CRUDItem _instance = CRUDItem._internal();
  int _id = 0;

  factory CRUDItem() => _instance;

  CRUDItem._internal();

  void create() => print('Create item with id: ${_id++}');

  void read() => print('Read item with id: $_id');

  void update() => print('Update item with id: $_id');

  void delete() => print('Delete item with id: ${_id--}');
}
