import 'dart:io';
import 'dart:math';

void main() {
  print('Введите коэффициент a');
  double a = double.parse(stdin.readLineSync()!);
  print('Введите коэффициент b');
  double b = double.parse(stdin.readLineSync()!);
  print('Введите коэффициент c');
  double c = double.parse(stdin.readLineSync()!);
  double d = pow(b, 2) - 4.0 * a * c;
  if (d < 0) {
    stdout.write('Дискриминант $d, корней нет');
  } else if (d == 0) {
    stdout.write('Дискриминант $d, корень равен ${-1 * b / (2 * a)}');
  } else {
    stdout.write(
        'Дискриминант $d, первый корень равен ${(-1 * b - sqrt(d)) / (2 * a)}, второй корень равен ${(-1 * b + sqrt(d)) / (2 * a)}');
  }
}
