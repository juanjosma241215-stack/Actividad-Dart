import 'dart:io';

// Definición de la clase Contact
class Contact {
  String name;
  String phone;
  
  Contact(this.name, this.phone);
}

void main() {
  List<Contact> agenda = [];
  bool ejecutando = true; // Se mantiene el nombre de la variable

  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        // Aprendiz 1: Agregar contacto
        stdout.write('Ingresa el nombre: ');
        String? nombre = stdin.readLineSync();
        stdout.write('Ingresa el teléfono: ');
        String? telefono = stdin.readLineSync();

        if (nombre != null && nombre.trim().isNotEmpty &&
            telefono != null && telefono.trim().isNotEmpty) {
          agenda.add(Contact(nombre.trim(), telefono.trim()));
          print('¡Contacto agregado con éxito!');
        } else {
          print('El nombre y el teléfono no pueden estar vacíos.');
        }
        break;

      // case '2':
      //   // Aprendiz 2: Listar contactos

      case '3':
        // Aprendiz 3: Buscar contacto por nombre
        if (agenda.isEmpty) {
          print('La agenda está vacía.');
          break;
        }
        stdout.write('Ingresa el nombre a buscar: ');
        String? query = stdin.readLineSync();

        if (query != null && query.trim().isNotEmpty) {
          var resultados = agenda.where(
            (c) => c.name.toLowerCase().contains(query.trim().toLowerCase())
          ).toList();

          if (resultados.isEmpty) {
            print('No se encontraron contactos con ese nombre.');
          } else {
            print('\n--- Coincidencias encontradas ---');
            for (var contacto in resultados) {
              print('• ${contacto.name} - ${contacto.phone}');
            }
          }
        } else {
          print('Debes ingresar un nombre válido.');
        }
        break;

      case '4':
        // Aprendiz 3: Eliminar contacto por nombre
        if (agenda.isEmpty) {
          print('La agenda está vacía.');
          break;
        }
        stdout.write('Ingresa el nombre del contacto a eliminar: ');
        String? nombreAEliminar = stdin.readLineSync();

        if (nombreAEliminar != null && nombreAEliminar.trim().isNotEmpty) {
          int cantidadInicial = agenda.length;
          agenda.removeWhere(
            (c) => c.name.toLowerCase() == nombreAEliminar.trim().toLowerCase()
          );

          if (agenda.length < cantidadInicial) {
            print('Contacto eliminado correctamente.');
          } else {
            print('No se encontró ningún contacto con ese nombre exacto.');
          }
        } else {
          print('Debes ingresar un nombre válido.');
        }
        break;

      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false; // Corregido: antes decía running = false
        break;

      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}