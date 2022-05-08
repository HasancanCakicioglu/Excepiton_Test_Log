import 'package:flutter/material.dart';
import 'package:logger/logger.dart';


final logger1 = Logger();


class loggerviewclass1 extends StatelessWidget {
  const loggerviewclass1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
            buildButton(()=>logger1.d("DEBUG message"),"DEBUG",Colors.blue),
            buildButton(()=>logger1.i("INFO message"),"DEBUG",Colors.blue),
            buildButton(()=>logger1.w("WARNİNG message"),"DEBUG",Colors.orange),
            buildButton(()=>logger1.e("ERROR message"),"DEBUG",Colors.red),
            buildButton(()=>logger1.wtf("WTF message"),"DEBUG",Colors.purple),
            
        ],
      ),
    );
  }
}

ElevatedButton buildButton(VoidCallback functon,String text,Color color){

  return ElevatedButton(onPressed: functon, child: Text(text ),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(color) ),);

}