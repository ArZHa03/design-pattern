part of abstract_factory;

abstract class _Arena {
  void start();
}

class _EasyArena extends _Arena {
  @override
  void start() => print('Easy arena started');
}

class _MediumArena extends _Arena {
  @override
  void start() => print('Medium arena started');
}

class _HardArena extends _Arena {
  @override
  void start() => print('Hard arena started');
}
