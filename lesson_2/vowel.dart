import 'dart:io';

void main() {
  int first = 'a'.codeUnitAt(0);
  int last = 'z'.codeUnitAt(0);
  int i = 1;
  Map<String, int> alphabet = {};
  List<String> vowels = ['a', 'e', 'o', 'u', 'i'];
  while (first <= last) {
    alphabet[String.fromCharCode(first)] = i;
    first++;
    i++;
  }
  vowels.forEach((letter) {
    alphabet.remove(letter);
  });
  stdout.write(alphabet);
}
