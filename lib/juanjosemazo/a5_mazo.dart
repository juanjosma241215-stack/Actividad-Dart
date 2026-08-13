import 'dart:io';
void generarSerieFibonacci() {
  print('--- 5. Serie de Fibonacci (<= 100) ---');
  
  int a = 1;
  int b = 1;

  stdout.write('$a $b ');

  int siguiente = a + b;
  while (siguiente <= 100) {
    stdout.write('$siguiente ');
    a = b;
    b = siguiente;
    siguiente = a + b;
  }
  print('\n');
}