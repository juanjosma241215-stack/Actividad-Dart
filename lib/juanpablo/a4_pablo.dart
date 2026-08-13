import 'dart:io';

/// Convierte una temperatura de grados Celsius a grados Fahrenheit,
/// simulando el comportamiento de un horno casero.
class ConversorTemperatura {
  double gradosCelsius;

  ConversorTemperatura({required this.gradosCelsius});

  /// Calcula la temperatura equivalente en Fahrenheit: F = (C * 1.8) + 32
  double convertirAFahrenheit() {
    return (gradosCelsius * 1.8) + 32;
  }
}

void main() {
  print('--- Conversor de Temperatura: Celsius a Fahrenheit ---');

  stdout.write('Ingrese la temperatura en grados Celsius (°C): ');
  final double gradosCelsius = double.parse(stdin.readLineSync()!);

  final ConversorTemperatura conversor = ConversorTemperatura(
    gradosCelsius: gradosCelsius,
  );
  final double gradosFahrenheit = conversor.convertirAFahrenheit();

  print('\nResultado:');
  print('$gradosCelsius °C equivalen a ${gradosFahrenheit.toStringAsFixed(2)} °F');
}