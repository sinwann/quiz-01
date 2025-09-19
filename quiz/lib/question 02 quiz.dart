import 'dart:io';

void dartbasics() {
  List<int> numbers = [];

  for (int i = 1; i <= 6; i++) {
    stdout.write("Enter number $i: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int sumOdd = 0;
  for (int num in numbers) {
    if (num % 2 != 0) {
      sumOdd += num;
    }
  }

  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  print("Sum of odd numbers: $sumOdd");
  print("Smallest number: $smallest");
}