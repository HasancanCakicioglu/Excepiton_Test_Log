


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:Exception_Test_Log/integrationTest/integrationTestView.dart' as app;

void main(){

  group("App test",(){
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("Full app test",(tester)async{
      app.main();
      await tester.pumpAndSettle();

      final emailFormField = find.byKey(Key("1"));
      final passwordFormField = find.byKey(Key("2"));
      final loginButton = find.byType(ElevatedButton).first;


      await tester.enterText(emailFormField,"abc");
      await tester.enterText(passwordFormField,"123");
      await tester.pumpAndSettle();

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

    });
  });


}