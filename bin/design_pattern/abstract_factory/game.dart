part of abstract_factory;

class Game {
  _Level? _level;
  _Arena? _arena;
  _Enemy? _enemy;

  Game(_GameFactory gameFactory) {
    _level = gameFactory.createLevel();
    _arena = gameFactory.createArena();
    _enemy = gameFactory.createEnemy();
  }

  void start() {
    _level?.start();
    _arena?.start();
    _enemy?.start();
  }
}
