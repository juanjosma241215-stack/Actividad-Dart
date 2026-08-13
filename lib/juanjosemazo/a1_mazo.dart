import 'dart:io';

void calcularDistancia() {
  print('--- 1. Cálculo de Distancia (MRU) ---');
  stdout.write('Ingresa la velocidad (m/s): ');
  double v = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingresa el tiempo (s): ');
  double t = double.parse(stdin.readLineSync()!);

  double d = v * t;
  print('La distancia recorrida es: $d metros\n');
}