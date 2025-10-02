export 'src/programacionpar_espejos_base.dart';


String ChecarEspejo(List<int> arreglo) {
  int n = arreglo.length;

  for (int i = 0; i < n ~/ 2; i++) {

    if (arreglo[i] != arreglo[n - i - 1]) {

      return 'No es un espejo';
      
    }
  }
  return 'Es un espejo';




}
