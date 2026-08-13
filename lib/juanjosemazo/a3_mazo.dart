import 'dart:io';
import 'dart:math'; // Librería necesaria para sqrt y pow

void calcularHipotenusa() {
  print('--- 3. Cálculo de Hipotenusa ---');
  stdout.write('Ingresa la longitud del cateto A: ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa la longitud del cateto B: ');
  double b = double.parse(stdin.readLineSync()!);

  // H = raíz cuadrada de (a^2 + b^2)
  double hipotenusa = sqrt(pow(a, 2) + pow(b, 2));

  print('La hipotenusa del triángulo es: ${hipotenusa.toStringAsFixed(2)}\n');
}