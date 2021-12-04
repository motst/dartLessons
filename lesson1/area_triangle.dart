import 'dart:io';

void main() {
  print('Введите основание треугольника');
  double base = double.parse(stdin.readLineSync()!);
  print('Введите высоту треугольника');
  double height = double.parse(stdin.readLineSync()!);
  stdout.write('Площадь треугольника ${1 / 2 * base * height}');
}
