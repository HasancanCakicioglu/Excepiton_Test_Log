import 'dart:async';

import 'package:Exception_Test_Log/Logger/logger2/loggerClass2.dart';
import 'package:Exception_Test_Log/Logger/logger2/loggerView2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runZonedGuarded(()async{
    example();
    
  }, (e,stackTrace){
    debugPrint("caught $e and $stackTrace");
    
    log2.w("logger $e");
    log2.i("logger $stackTrace");
  },zoneSpecification: ZoneSpecification(
    
    print: ((self, parent, zone, line) {
      
      parent.print(zone, "${DateTime.now()} | line =  $line  |  self = $self | parent = $parent | zone = $zone");
    })
  ));

  

}

Future example()async{
  await for ( var x in streamer()){
    print("Got $x");
    if(x==9) throw ("error $x");
  }
}


Stream<int> streamer()async*{

  var duration = Duration(milliseconds: 100);
  for ( var x = 0; x < 10;x++){
    await Future.delayed(duration);
    yield x;
  }

}



final log2 = logger2(loggerviewclass2);