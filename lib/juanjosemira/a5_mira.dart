void main() {
  int anterior = 1;
  int actual = 1;
  int siguiente;

  print(anterior); // primer 1
  print(actual);   // segundo 1

  while (true) {
    siguiente = anterior + actual;
    if (siguiente > 100) {
      break;
    }
    print(siguiente);
    anterior = actual;
    actual = siguiente;
  }
}