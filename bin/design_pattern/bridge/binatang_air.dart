part of binatang_bridge;

class BinatangAir implements Binatang {
  @override
  String get getNama => 'Binatang Air';

  @override
  bool get hidupDiAir => true;

  @override
  bool get hidupDiDarat => false;
}
