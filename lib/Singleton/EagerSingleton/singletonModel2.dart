
// ignore_for_file: file_names

class Singleton {
  static final Singleton _instance = Singleton._init();

  Singleton._init();

  static Singleton get instance => _instance;
  
  String isim = "naber";

  String getDateTime(){
    return DateTime.now().toIso8601String();
  }
   
}