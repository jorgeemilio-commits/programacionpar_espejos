import 'package:programacionpar_espejos/programacionpar_espejos.dart';
import 'package:test/test.dart';

void main() {
  group('Prueba de espejos', () {

    test('Cantidad de numeros repetidos', () {
      final numeros = [1, 2, 3, 4, 6 , 8 , 4, 3, 2, 1];

      expect(ChecarEspejo(numeros), "La longitud del espejo  más grande es: 4");
    });

     test('no hay espejos', () {
      final numeros = [1, 2, 3, 4, 5];

      expect(ChecarEspejo(numeros), "No se encontraron espejos de longitud mayor a 0");
    });

     test('espejo completo', () {
      final numeros = [7, 1, 2, 3, 2, 1, 7];

      expect(ChecarEspejo(numeros), "La longitud del espejo  más grande es: 7");
    });

     test('espejo en los extremos', () {
      final numeros = [5, 9, 1, 2, 3, 1, 9, 5];

      expect(ChecarEspejo(numeros), "La longitud del espejo  más grande es: 3");
    });

     test('espejo en el centro', () {
      final numeros = [4, 6, 8, 1, 2, 1, 8, 6, 4];

      expect(ChecarEspejo(numeros), "La longitud del espejo  más grande es: 9");
    });

     test('espejo con un solo elemento', () {
      final numeros = [3];

      expect(ChecarEspejo(numeros), "La longitud del espejo  más grande es: 1");
    });

     test('arreglo vacío', () {
      final numeros = <int>[];

      expect(ChecarEspejo(numeros), "No se encontraron espejos de longitud mayor a 0");
    });
  });
}
