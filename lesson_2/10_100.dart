import 'dart:io';

void main() {
  List<int> list = [10];
  int i = list.last;
  while (i < 100) {
    i += 5;
    list.add(i);
  }
  stdout.write(list);
}
