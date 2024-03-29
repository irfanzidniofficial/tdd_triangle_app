import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_triangle_app/triangle_app.dart';

void main() {
  group('Detech the triangle', () {
    test('Should throw Error when there is side less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });
  });

  group('Detech the triangle', () {
    test('Should return "Segitiga Sama Sisi" when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), "Segitiga Sama Sisi");
      expect(detectTriangle(2, 2, 1), isNot("Segitiga Sama Sisi"));
    });

    group('Detech the triangle', () {
      test('Should return "Segitiga Sama Kaki" when only two sides are equal',
          () {
        expect(detectTriangle(2, 2, 3), "Segitiga Sama Kaki");
        expect(detectTriangle(4, 2, 4), "Segitiga Sama Kaki");
        expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
        expect(detectTriangle(4, 1, 4), "Segitiga Sama Kaki");
      });
    });

    group("Detech the triangle", () {
      test('Should return "Segitiga Sembarang" when no sides are equal', () {
        expect(detectTriangle(2, 4, 3), "Segitiga Sembarang");
      });
    });
  });
}
