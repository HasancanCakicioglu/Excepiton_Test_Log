import 'package:flutter/material.dart';


class integrationTestpAGE2 extends StatefulWidget {
  integrationTestpAGE2({Key? key}) : super(key: key);

  @override
  State<integrationTestpAGE2> createState() => _integrationTestpAGE2State();
}

class _integrationTestpAGE2State extends State<integrationTestpAGE2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Checkbox(value: false, onChanged: (e){
          print(e.toString());
        }),
      ),
    );
  }
}