import 'dart:io';

/// Representa la información necesaria para calcular la planilla
/// mensual de un empleado.
class Empleado {
  String nombre;
  double horasLaboradas;
  double tarifaHora;

  Empleado({
    required this.nombre,
    required this.horasLaboradas,
    required this.tarifaHora,
  });

  /// Calcula el total devengado en el mes: horas laboradas * tarifa por hora
  double calcularTotalDevengado() {
    return horasLaboradas * tarifaHora;
  }

  /// Imprime en pantalla el resumen de la planilla del empleado
  void imprimirPlanilla() {
    final double totalDevengado = calcularTotalDevengado();
    print('\n--- Planilla del Empleado ---');
    print('Nombre del empleado: $nombre');
    print('Horas laboradas: $horasLaboradas');
    print('Total devengado: \$${totalDevengado.toStringAsFixed(2)}');
  }
}

void main() {
  print('--- Elaboración de Planilla de Empleado ---');

  stdout.write('Ingrese el nombre del empleado: ');
  final String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese la cantidad de horas laboradas en el mes: ');
  final double horasLaboradas = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la tarifa por hora: ');
  final double tarifaHora = double.parse(stdin.readLineSync()!);

  final Empleado empleado = Empleado(
    nombre: nombre,
    horasLaboradas: horasLaboradas,
    tarifaHora: tarifaHora,
  );

  empleado.imprimirPlanilla();
}