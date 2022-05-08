import 'package:Exception_Test_Log/test/unitTest/3/mocktail3.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockbaseClass extends Mock implements baseClass {}

void main() {
  group("deneme", () {
    late MockbaseClass baseClasss;
    

    setUp(() {
      baseClasss = MockbaseClass();
    });

    test("ilk test", () {
      // Stub the `sound` method.
      when(() => baseClasss.getInt(any())).thenReturn(0);

      expect(baseClasss.getString(),null);
      
      expect(baseClasss.getInt(5),0);

      

      
    });

  
  });
}
