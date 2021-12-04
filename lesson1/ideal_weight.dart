import 'dart:io';

void main() {
  print('Введите ваше имя');
  String? name = stdin.readLineSync();
  print('Введите ваш вес');
  double height = double.parse(stdin.readLineSync()!);
  double weight = (height - 110) * 1.15;
  if (weight > 0) {
    stdout.write('$name, ваш вес $weight');
  } else {
    stdout.write('Ваш вес оптимальный');
  }
}
