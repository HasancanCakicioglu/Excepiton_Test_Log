import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


//release modda uygulamada bir hata yakalanırsa uygulamayı kapatır

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
    if(kDebugMode){
      print("Hata oluştu details = ${details.exception}");
    }
  };
  runApp(ZoneMyApp1());
}

// rest of `flutter create` code...

class ZoneMyApp1 extends StatelessWidget {
  const ZoneMyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(title: Text("Zone 1"),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          throw ("hata");
        }, child: Text("hATA")),
      ),
    );
  }
}