// ignore: file_names
class LazySingleton {
  static LazySingleton? _instance;

  factory LazySingleton() => _instance ??= LazySingleton._init();

  LazySingleton._init();

  

  final isim = "isim";

  String getDateTime(){
    return DateTime.now().toIso8601String();
  }
}

