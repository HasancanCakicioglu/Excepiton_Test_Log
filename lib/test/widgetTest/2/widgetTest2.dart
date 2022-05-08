

import 'package:flutter/material.dart';

class widgetTest2 extends StatelessWidget {
  widgetTest2({Key? key,this.bookTitles}) : super(key: key);
  final List<String>? bookTitles;

  @override
  Widget build(BuildContext context) {
    assert(bookTitles!.isNotEmpty);
    return Scaffold(
      appBar: AppBar(
        title: Text("BookShelf"),
      
      ),
      body: ListView.builder(
        itemCount: bookTitles!.length,
        itemBuilder: (context,index){
        return ListTile(
          title: Text(bookTitles![index]),
        );
      }),
    );
  }
}