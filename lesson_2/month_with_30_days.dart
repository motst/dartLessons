//import 'dart:io';

void main() {
  Map<String, int> year = {
    'january': 31,
    'february': 28,
    'march': 31,
    'april': 30,
    'may': 31,
    'june': 30,
    'jule': 31,
    'august': 31,
    'september': 30,
    'october': 31,
    'november': 30,
    'december': 31
  };
  year.forEach((month, days) {
    if (days == 30) {
      print('$month: $days days');
    }
  });
}
