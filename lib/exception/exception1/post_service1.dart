
import 'dart:async';
import 'dart:io';



class PostService1 {
  
  void getOnePost() async {
    try {

        throw TimeoutException("deneme");
      
    } on SocketException catch(e,s) {
      
      throw Failure('No Internet connection 😑 e = $e || s = $s');
    } on HttpException {
     
      throw Failure("Couldn't find the post 😱");
      
    } on FormatException {
      throw Failure("Bad response format 👎");
    } on TimeoutException{

      print("rethrow");
      rethrow;

    }catch(e,s){
      print("$e + $s");
    }finally{
      print("Finally");
    }
  }
}

class Failure {
  // Use something like "int code;" if you want to translate error messages
  final String message;

  Failure(this.message);

  @override
  String toString() => message;
}

