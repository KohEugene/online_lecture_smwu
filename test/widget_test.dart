

import 'collections.dart';

void main() {

  Collections collections = Collections();
  collections.collectionSet();
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