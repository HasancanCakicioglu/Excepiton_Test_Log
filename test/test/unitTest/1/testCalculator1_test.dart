



import 'package:Exception_Test_Log/test/unitTest/1/testCalculator1.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('tests for add component', () {
    
    late Calculator calculator;
    int c=1;
    setUp(() {
      calculator = Calculator();
      
    });

    
    test('should return a + b when a and b are two positives.', () {
      // arrange
      int a = 10;
      int b = 20;
      int expectedResult = a + b;

      // act
      int actualResult = calculator.add(a, b);

      // assert
      expect(actualResult, expectedResult);
    });

    test('should return a + b when a and b are two negatives.', () {
      // arrange
      int a = -10;
      int b = -20;
      int expectedResult = a + b;

      // act
      int actualResult = calculator.add(a, b);

      //assert
      expect(actualResult, expectedResult);
    });

    test('should return a + b when a is negative and b is positive', () {
      // arrange
      int a = -10;
      int b = 20;
      int expectedResult = a + b;

      // act
      int actualResult = calculator.add(a, b);

      //assert
      expect(actualResult, expectedResult);
    });

    test('should return a + b when a is positive and b is negative.', () {
      // arrange
      int a = -10;
      int b = -20;
      int expectedResult = a + b;

      // act
      int actualResult = calculator.add(a, b);

      //assert
      expect(actualResult, expectedResult);
    });
    tearDown(() {
      print("$c test finish");
      c++;
    });
  });
}