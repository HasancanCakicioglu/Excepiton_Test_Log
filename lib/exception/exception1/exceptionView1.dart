

import 'package:Exception_Test_Log/exception/exception1/post_service1.dart';
import 'package:flutter/material.dart';

class exceptionViewclass1 extends StatefulWidget {
  exceptionViewclass1({Key? key}) : super(key: key);

  @override
  State<exceptionViewclass1> createState() => _exceptionViewclass1State();
}

class _exceptionViewclass1State extends State<exceptionViewclass1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              PostService1().getOnePost();
            }, child: Text("THROW")),
          ],
        ),
      ),
    );
  }
}