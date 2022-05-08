
import 'package:Exception_Test_Log/integrationTest/integrationTestSayfa2.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home2(),
    );
  }
}

class Home2 extends StatelessWidget {
  Home2({Key? key}) : super(key: key);
  final Controller1 = TextEditingController();
  final Controller2 = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        Form(
          
          key: formKey,
          child: Column(
          children: [
            TextFormField(
              key: Key("1"),
              controller: Controller1,
            ),
            TextFormField(
              key: Key("2"),
              controller: Controller2,
            ),
            ElevatedButton(onPressed: (){
              
                if(Controller1.text == "abc" && Controller2.text=="123"){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>integrationTestpAGE2()));
                }

            }, child: Text("Tıkla")),
          ],
        ))
      ],
    ),
    );
  }
}