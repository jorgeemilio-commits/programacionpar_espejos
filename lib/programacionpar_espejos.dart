export 'src/programacionpar_espejos_base.dart';


String ChecarEspejo(List<int> arreglo) {
  int n = arreglo.length;
  int longMaxima = 0;

  for (int i = 0; i < n; i++) {
    if (arreglo[i] == arreglo[n - 1 - i]) {
      longMaxima++;
    } else {
      break;
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
      List<int> sublista = arreglo.sublist(i, j + 1);

      bool esEspejo = true;
      for (int k = 0; k < sublista.length ~/ 2; k++) {
        if (sublista[k] != sublista[sublista.length - 1 - k]) {
          esEspejo = false;
          break;
        }
      }

      if (esEspejo && sublista.length > longMaxima) {
        longMaxima = sublista.length;
      }
    }
  }

  if (longMaxima > 0) {
    return 'La longitud del espejo  más grande es: $longMaxima';
  } else {
    return 'No se encontraron espejos de longitud mayor a 0';
  }
}
