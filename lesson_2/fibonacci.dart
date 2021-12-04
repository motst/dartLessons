import 'dart:io';

void main() {
  List<int> list = [0, 1];
  int i = 0;
  while (i < 100) {
    i = list[list.length - 1] + list[list.length - 2];
    list.add(i);
  }
  list.removeLast();
  stdout.write(list);
}
