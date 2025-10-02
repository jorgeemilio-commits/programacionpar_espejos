import 'package:programacionpar_espejos/programacionpar_espejos.dart';
import 'package:test/test.dart';

void main() {
  group('Prueba de espejos', () {

    test('Hay 2 espejos de diferentes tamaños', () {
      final numeros = [1, 2, 3, 4, 3, 2, 1];

      expect(ChecarEspejo(numeros), "Es un espejo");
    });

     test('no hay espejos de diferentes tamaños', () {
      final numeros = [1, 6, 3, 4, 3, 2, 7];

      expect(ChecarEspejo(numeros), "No es un espejo");
    });


  });
}
