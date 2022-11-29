import 'package:flutter/material.dart';

void main() {
  
  runApp(ZoneMyApp2());
}


class ZoneMyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? widget) {
        Widget error = Text('...rendering error...');
        print("widget = ${widget}");
        print("widget = ${widget is Navigator}");
        if (widget is Scaffold || widget is Navigator){
          error = Scaffold(body: Center(child: error));
        }
          
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
        if (widget != null) return widget;
        throw ('widget is null');
      },
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Zone 2"),),
    );
  }
}