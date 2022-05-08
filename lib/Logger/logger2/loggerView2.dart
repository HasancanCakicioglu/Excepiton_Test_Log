

import 'package:Exception_Test_Log/Logger/logger2/loggerClass2.dart';
import 'package:flutter/material.dart';






class loggerviewclass2 extends StatelessWidget {
  loggerviewclass2({Key? key}) : super(key: key);
  final log2 = logger2(loggerviewclass2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
            buildButton(()=>log2.d("DEBUG message"),"DEBUG",Colors.blue),
            buildButton(()=>log2.i("INFO message"),"DEBUG",Colors.blue),
            buildButton(()=>log2.w("WARNİNG message"),"DEBUG",Colors.orange),
            buildButton(()=>log2.e("ERROR message"),"DEBUG",Colors.red),
            buildButton(()=>log2.wtf("WTF message"),"DEBUG",Colors.purple),
            
        ],
      ),
    );
  }
}

ElevatedButton buildButton(VoidCallback functon,String text,Color color){

  return ElevatedButton(onPressed: functon, child: Text(text ),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(color) ),);

}