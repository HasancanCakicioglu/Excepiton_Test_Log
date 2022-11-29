import 'dart:async';

void main()async{

  print(doSomething().then((value) => print(value+value)));


}


Future<String> doSomething() async {
  final Completer<String> completer = Completer<String>();

  Timer(Duration(seconds: 3),(){
    print("Do somethin");
    completer.complete("Complete");
  });
  print(completer.future);

  return completer.future;
}