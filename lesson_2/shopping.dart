import 'dart:io';

void main() {
  Map<String?, String?> cart = {};
  Map<String?, double?> totalForGood = {};
  double totalForCart = 0;

  do {
    print('Введите наименование товара');
    String? good = stdin.readLineSync();
    if (good == 'stop') {
      break;
    }
    print('Введите цену за товар');
    double price = double.parse(stdin.readLineSync()!);
    print('Введите количество товара');
    double quantity = double.parse(stdin.readLineSync()!);
    cart[good] = ('price $price, quantity $quantity;');
    totalForGood[good] = price * quantity;
    totalForCart += price * quantity;
  } while (cart.length < 3);
  cart.forEach((good, priceQuantity) {
    print('$good: $priceQuantity');
  });
  print('Итоговая сумма за каждый товар $totalForGood');
  stdout.write('Итоговая сумма всех покупок в корзине $totalForCart');
}
