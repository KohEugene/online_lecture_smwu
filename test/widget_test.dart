

import 'collections.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  //Collections collections = Collections();
  //collections.collectionSet();

  Person person1 = Person("고유진", 23, 60.0);
  print("person1 : $person1");

  String talk1 = person1.talk("이주연");
  print(talk1);

  Person person2 = Person("이주연", 28, 70.0);
  Person person3 = Person("이재현", 29, 70.0);

  List<Person> personList = [];
  personList.add(person1);
  personList.add(person2);
  personList.add(person3);
  print(personList);

  //var product = Product("아메리카노", "스타벅스");
  //print(product);
  //product.sale();
  //product.sale();
  //print(product);

  Product(name: "라떼", company: "스타벅스");
}

void variableTest() {

  String name = "고유진";
  print(name);

  double weight = 70.0;
  print(weight);

  int age = 23;
  print(age);

  bool b = true;
  b = false;
  print(b);

  var name2 = "고유진";
  dynamic name3 = "이주연";

  // 상수는 fianl, const
  const name4 = "더보이즈";
}