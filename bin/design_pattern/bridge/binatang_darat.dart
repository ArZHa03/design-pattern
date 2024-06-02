part of binatang_bridge;

class BinatangDarat implements Binatang {
  @override
  String get getNama => 'Binatang Darat';

  @override
  bool get hidupDiAir => false;

  @override
  bool get hidupDiDarat => true;

  int get jumlahKaki => 4;
}
