import 'dart:io';

void convertirTemperatura() {
  print('--- 4. Conversión de Celsius a Fahrenheit ---');
  stdout.write('Ingresa la temperatura en grados Celsius (°C): ');
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 1.8) + 32;

  print('La temperatura equivalente es: $fahrenheit °F\n');
}