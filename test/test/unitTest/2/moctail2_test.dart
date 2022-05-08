
import 'package:Exception_Test_Log/test/unitTest/2/mocktail2.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCat extends Mock implements Cat {}

void main() {
  group("deneme", () {
    late MockCat cat;

    setUp(() {
      cat = MockCat();
    });

    test("ilk test", () {
      // Stub the `sound` method.
      when(() => cat.sound()).thenReturn('meow!!!');
      expect(cat.sound(), "meow!!!");
    });

    test("2 test", () {
      // Verify no interactions have occurred.
      // Stub a mock method before interacting.
      verifyNever(() => cat.sound());
    });

    test("3 test", () {
      // Verify no interactions have occurred.
      // Stub a mock method before interacting.

      // Simple capture
      cat.eatFood("Fish");
      expect(verify(() => cat.eatFood(captureAny())).captured.single, "Fish");

// Capture multiple calls
      cat.eatFood("Milk");
      cat.eatFood("Fish");
      expect(
          verify(() => cat.eatFood(captureAny())).captured, ["Milk", "Fish"]);

// Conditional capture
      cat.eatFood("Milk");
      cat.eatFood("Fish");
      expect(verify(() => cat.eatFood(captureAny())).captured, ["Fish"]);
    });
  });
}
