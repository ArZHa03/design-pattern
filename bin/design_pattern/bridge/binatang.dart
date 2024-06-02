library binatang_bridge;

part 'anjing.dart';
part 'binatang_air.dart';
part 'binatang_darat.dart';
part 'hiu.dart';
part 'kambing.dart';
part 'koi.dart';
part 'kucing.dart';
part 'lele.dart';

abstract class Binatang {
  String get getNama;

  bool get hidupDiAir;

  bool get hidupDiDarat;
}
