part of abstract_factory;

abstract class _Enemy {
  void start();
}

class _EasyEnemy extends _Enemy {
  @override
  void start() => print('Easy enemy started');
}

class _MediumEnemy extends _Enemy {
  @override
  void start() => print('Medium enemy started');
}

class _HardEnemy extends _Enemy {
  @override
  void start() => print('Hard enemy started');
}
