import 'dart:io';

void main() {
  Map<int, int> calendar = {
    1: 31,
    2: 28,
    3: 31,
    4: 30,
    5: 31,
    6: 30,
    7: 31,
    8: 31,
    9: 30,
    10: 31,
    11: 30,
    12: 31
  };
  print('Введите день');
  int day = int.parse(stdin.readLineSync()!);
  print('Введите месяц');
  int month = int.parse(stdin.readLineSync()!);
  print('Введите год');
  int year = int.parse(stdin.readLineSync()!);
  if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {
    calendar[2] = 29;
  }
  int result = 0;
  calendar.forEach((key, value) {
    if (key < month) {
      result += value;
    }
  });
  stdout.write('Количество дней с начала года ${result + day}');
}
