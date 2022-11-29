import 'dart:convert';

void main(){

  void foo(List<String> lines) {
  
}

void bar(String jsonText) {
  foo(jsonDecode(jsonText)); // Implicit cast
  // strict-casts: true // true diye hata veriyor
}


///////////////////////////////
//////////////////////////////

//strict-inference: true 
final lines = {}; // Inference failure
lines['Dart'] = 10000;
lines['C++'] = 'one thousand';
lines['Go'] = 2000;
print('Lines: ${lines.values.reduce((a, b) => a + b)}'); //



///////////////////////////////
//////////////////////////////
///


//strict-raw-types: true
List numbers = [1, 2, 3]; // List with raw type
for (final n in numbers) {
  print(n.length); // Runtime error
}

}