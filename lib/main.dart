


import 'package:Exception_Test_Log/Logger/logger1/LoggerView1.dart';
import 'package:Exception_Test_Log/Logger/logger2/loggerView2.dart';
import 'package:Exception_Test_Log/exception/exception1/exceptionView1.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
       home:Home()
      
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
      appBar: AppBar(
        title: Text("Design patterns"),
      ),
      body: Wrap(
        children: [
            goNavigate(exceptionViewclass1(),"Exception 1", context),
            goNavigate(loggerviewclass1(),"Logger 1", context),
            goNavigate(loggerviewclass2(),"Logger 2", context),
            
        ],
      ),
      
    );
  }
  Widget goNavigate(Widget classs,String text,BuildContext context){
  return ElevatedButton(onPressed: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>classs));
  }, child: Text(text));
}
}


