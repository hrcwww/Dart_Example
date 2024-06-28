import 'dart:io';

void main() {
  stdout.write('Enter a number to calculate its factorial: ');
  String? input = stdin.readLineSync();

  if (input == null) {
    print('No input received. Exiting.');
    return;
  }

  int number = int.parse(input);

  print('Input received: $number');

  int factorial = calculateFactorial(number);
  print('The factorial of $number is $factorial.');
}

int calculateFactorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * calculateFactorial(n - 1);
}
