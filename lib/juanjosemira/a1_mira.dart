import 'dart:io';

void main() {
  print('Ingrese la velocidad (m/s): ');
  double velocidad = double.parse(stdin.readLineSync()!);

  print('Ingrese el tiempo (segundos): ');
  double tiempo = double.parse(stdin.readLineSync()!);

  double distancia = velocidad * tiempo;

  print('Distancia recorrida: $distancia metros');
}