import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    //await myErrorsHandler.initialize();
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      print("details = $details");
      //myErrorsHandler.onErrorDetails(details);
      //exit(1);
    };
    runApp(MyApp());
  }, (Object error, StackTrace stack) {
    //myErrorsHandler.onError(error, stack);
    //exit(1);
    print("error = $error");
    print("stack = $stack");
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? widget) {
        Widget error = Text('...rendering error...');
        
        if (widget is Scaffold || widget is Navigator)
          error = Scaffold(body: Center(child: error));
        print("widget = $widget");  
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
        if (widget != null) return widget;
        throw ('widget is null');
      },
    );
  }
}