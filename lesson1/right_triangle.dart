import 'dart:io';
import 'dart:math';

void main() {
  print('Введите сторону a');
  double a = double.parse(stdin.readLineSync()!);
  print('Введите сторону b');
  double b = double.parse(stdin.readLineSync()!);
  print('Введите сторону c');
  double c = double.parse(stdin.readLineSync()!);
  if ((a == b) && (b == c)) {
    stdout.write('Треугольник равносторонний');
  } else if ((a == b) || (b == c) || (a == c)) {
    stdout.write('Треугольник равнобедренный');
  } else if ((pow(a, 2) == pow(b, 2) + pow(c, 2)) ||
      (pow(b, 2) == pow(a, 2) + pow(c, 2)) ||
      (pow(c, 2) == pow(a, 2) + pow(b, 2))) {
    stdout.write('Треугольник прямоугольный');
  }
}
