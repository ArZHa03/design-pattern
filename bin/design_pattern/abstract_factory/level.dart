part of abstract_factory;

abstract class _Level {
  void start();
}

class _EasyLevel extends _Level {
  @override
  void start() => print('Easy level started');
}

class _MediumLevel extends _Level {
  @override
  void start() => print('Medium level started');
}

class _HardLevel extends _Level {
  @override
  void start() => print('Hard level started');
}
