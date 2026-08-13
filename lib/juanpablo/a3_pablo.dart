import 'dart:io';
import 'dart:math';

/// Representa un triángulo rectángulo definido por sus dos catetos,
/// a partir de los cuales se puede calcular la hipotenusa.
class TrianguloRectangulo {
  double catetoA;
  double catetoB;

  TrianguloRectangulo({required this.catetoA, required this.catetoB});

  /// Calcula la hipotenusa aplicando el teorema de Pitágoras:
  /// H = raíz cuadrada(a^2 + b^2)
  double calcularHipotenusa() {
    return sqrt(pow(catetoA, 2) + pow(catetoB, 2));
  }
}

void main() {
  print('--- Cálculo de la Hipotenusa de un Triángulo Rectángulo ---');

  stdout.write('Ingrese la longitud del cateto A: ');
  final double catetoA = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la longitud del cateto B: ');
  final double catetoB = double.parse(stdin.readLineSync()!);

  final TrianguloRectangulo triangulo = TrianguloRectangulo(
    catetoA: catetoA,
    catetoB: catetoB,
  );
  final double hipotenusa = triangulo.calcularHipotenusa();

  print('\nResultado:');
  print('La hipotenusa del triángulo es: ${hipotenusa.toStringAsFixed(2)}');
}