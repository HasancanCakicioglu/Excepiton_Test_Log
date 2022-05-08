
import 'package:Exception_Test_Log/test/widgetTest/2/widgetTest2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  group("scrool testing",(){

    testWidgets('test 1', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: widgetTest2(
          bookTitles: List.generate(5, (index) => "Book $index"),
        ),
      ));

      await tester.drag(find.byType(ListView),const Offset(0,-300));
      await tester.pump();

      final firstBookFinder = find.text("Book 0");
      expect(firstBookFinder,findsOneWidget);

      final listTile = find.byType(ListTile);

      expect(listTile,findsNWidgets(5));
  }); 

  });
}
