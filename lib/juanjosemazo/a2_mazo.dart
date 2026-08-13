import 'dart:io';

void calcularPlanilla() {
  print('--- 2. Planilla de Empleado ---');
  stdout.write('Nombre del empleado: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Cantidad de horas laboradas en el mes: ');
  int horas = int.parse(stdin.readLineSync()!);

  stdout.write('Tarifa por hora : ');
  double tarifa = double.parse(stdin.readLineSync()!);

  double totalDevengado = horas * tarifa;

  print('\n--- RESUMEN DE PLANILLA ---');
  print('Empleado: $nombre');
  print('Horas laboradas: $horas');
  print('Total devengado: \$$totalDevengado\n');
}