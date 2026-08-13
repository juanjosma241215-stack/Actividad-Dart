import 'dart:io';

/// Representa un automóvil que se desplaza con Movimiento Rectilíneo
/// Uniforme (MRU), es decir, a velocidad constante.
class Automovil {
  double velocidad; // metros por segundo (m/s)
  double tiempo; // segundos (Sg)

  Automovil({required this.velocidad, required this.tiempo});

  /// Calcula la distancia recorrida aplicando la fórmula D = V * T
  double calcularDistanciaRecorrida() {
    return velocidad * tiempo;
  }
}

void main() {
  print('--- Cálculo de Distancia Recorrida (MRU) ---');

  stdout.write('Ingrese la velocidad del automóvil (m/s): ');
  final double velocidad = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el tiempo recorrido (segundos): ');
  final double tiempo = double.parse(stdin.readLineSync()!);

  final Automovil automovil = Automovil(velocidad: velocidad, tiempo: tiempo);
  final double distanciaRecorrida = automovil.calcularDistanciaRecorrida();

  print('\nResultado:');
  print('La distancia recorrida es: ${distanciaRecorrida.toStringAsFixed(2)} metros');
}