abstract class baseClass{

  void getVoid();
  String? getString();
  int? getInt(int a);

}

class sacmaClass{

  void getVoid()=>null;
  String? getString()=>"f";
  int? getInt(int a)=>a;

}


class ikinciClass extends baseClass{

  final Repository repository;

  ikinciClass({required this.repository});

  @override
  int? getInt(int a) {
    return a;
  }

  @override
  String? getString() {
    return "hhh";
  }

  @override
  void getVoid() {
    
  }



}


class Repository{


  Future<int> gelecekInt(){
    return Future.value(11);
  }

}