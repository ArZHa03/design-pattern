library order_facade;

part 'payment.dart';
part 'product.dart';
part 'shipping.dart';

class OrderFacade {
  final _Payment _payment = _Payment();
  final _Shipping _shipping = _Shipping();
  final _Product _product = _Product();

  void orderProduct() {
    _product.getProduct();
    _shipping.shipProduct();
    _payment.makePayment();
  }
}
