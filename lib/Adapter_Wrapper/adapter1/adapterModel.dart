// ignore_for_file: camel_case_types

import 'dart:convert';

class Person {
  String name;
  Person({
    required this.name,
  });
}

//adapter abstract
abstract class IContactsAdapter{

  List<Person> uploadPersonData();

}



class adapterDeneme1 extends IContactsAdapter{
  @override
  List<Person> uploadPersonData() {
    
    throw UnimplementedError();
  }

}


class adapterDeneme2 extends IContactsAdapter{
  @override
  List<Person> uploadPersonData() {
    
    throw UnimplementedError();
  }

}