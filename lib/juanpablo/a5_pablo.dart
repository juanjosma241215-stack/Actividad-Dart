/// Genera la serie de Fibonacci (1, 1, 2, 3, 5, 8, 13...) hasta
/// que el valor calculado sea menor o igual a un límite dado.
class SerieFibonacci {
  int limite;

  SerieFibonacci({required this.limite});

  /// Calcula y retorna la lista de valores de la serie de Fibonacci
  /// que son menores o iguales al límite establecido.
  List<int> generarSerie() {
    final List<int> serie = [];
    int valorAnterior = 1;
    int valorActual = 1;

    while (valorAnterior <= limite) {
      serie.add(valorAnterior);
      final int siguienteValor = valorAnterior + valorActual;
      valorAnterior = valorActual;
      valorActual = siguienteValor;
    }

    return serie;
  }

  /// Imprime en pantalla la serie de Fibonacci generada
  void imprimirSerie() {
    final List<int> serie = generarSerie();
    print('Serie de Fibonacci hasta $limite:');
    print(serie.join(' '));
  }
}

void main() {
  print('--- Serie de Fibonacci ---');

  final SerieFibonacci serieFibonacci = SerieFibonacci(limite: 100);
  serieFibonacci.imprimirSerie();
}