
import 'package:flutter/material.dart';





class widgetTest1 extends StatefulWidget {
  widgetTest1({Key? key}) : super(key: key);

  @override
  State<widgetTest1> createState() => _widgetTest1State();
}



class _widgetTest1State extends State<widgetTest1> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Design patterns"),
      ),
      body: Container(
        child: Text(counter.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()async{
        await Future.delayed(const Duration(seconds: 1));
        
        counter++;
        setState(() {
          
        });
      },child: const Icon(Icons.add),),
    );
  }
  
}


