import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese el lado a: ');
  double a = double.parse(stdin.readLineSync()!);

  print('Ingrese el lado b: ');
  double b = double.parse(stdin.readLineSync()!);

  double hipotenusa = sqrt(pow(a, 2) + pow(b, 2));

  print('La hipotenusa es: $hipotenusa');
}