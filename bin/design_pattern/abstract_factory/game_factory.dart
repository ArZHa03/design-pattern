library abstract_factory;

part 'arena.dart';
part 'enemy.dart';
part 'game.dart';
part 'level.dart';

abstract class _GameFactory {
  _Level createLevel();

  _Arena createArena();

  _Enemy createEnemy();
}

class EasyGameFactory implements _GameFactory {
  @override
  _Level createLevel() => _EasyLevel();

  @override
  _Arena createArena() => _EasyArena();

  @override
  _Enemy createEnemy() => _EasyEnemy();
}

class MediumGameFactory implements _GameFactory {
  @override
  _Level createLevel() => _MediumLevel();

  @override
  _Arena createArena() => _MediumArena();

  @override
  _Enemy createEnemy() => _MediumEnemy();
}

class HardGameFactory implements _GameFactory {
  @override
  _Level createLevel() => _HardLevel();

  @override
  _Arena createArena() => _HardArena();

  @override
  _Enemy createEnemy() => _HardEnemy();
}
