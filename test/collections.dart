class Collections {

  void listPractice() {
    List<String> animalList = [];

    animalList.addAll(["bird", "lion", "monkey", "cat", "rabbit"]);
    print("add : $animalList");

    animalList.removeAt(1);
    print("remove : $animalList");
  }

  void mapPractice() {
    Map<String, int> nameAgeMap = {};

    nameAgeMap["고유진"] = 23;
    nameAgeMap["이주연"] = 28;
    nameAgeMap["김영훈"] = 29;
    // nameAgeMap.addAll({"고유진": 23, "이주연": 28, "김영훈": 29});

    nameAgeMap.removeWhere(
        (key, value) {
          return key == "이주연";
        }
    );
    print("$nameAgeMap");
  }

  void setPractice() {
    Set<String> nationSet = {};

    nationSet.add("한국");
    nationSet.add("일본");
    nationSet.add("중국");
    nationSet.add("베트남");
    nationSet.add("캐나다");

    nationSet.removeWhere(
        (element) {
          return element == "한국";
        }
    );
    print("$nationSet");
  }

  void listAdd() {
    int age = 23;

    List<int> ageList = [];
    ageList.add(age);
    print("add 1 : $ageList");

    ageList.add(age);
    print("add 2 : $ageList");

    ageList.addAll([1, 2, 3, 4, 5, 6, 7]);
    print("add 3 : $ageList");

    ageList.insert(0, 100);
    print("add 4 : $ageList");
  }
  
  void listRemove() {
    List<String> nameList = [];
    nameList.addAll(["고유진", "이주연", "김영훈", "이재현", "주학년"]);
    
    nameList.removeLast();
    nameList.removeAt(1);
    print("listRemove 1 : $nameList");
    nameList.remove("고유진");
    print("listRemove 2 : $nameList");
    nameList.clear();
    print("listRemove 3 : $nameList");
  }

  void listController() {
    List<int> ageList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    print("listController 1 : ${ageList.length}");

    int ageFirst = ageList.first;
    int ageLast = ageList.last;
    print("ageFirst : $ageFirst, ageLast : $ageLast");

    int ageFour = ageList[3];
    print("ageFour : $ageFour");
  }

  void collectionMap() {
    Map<String, int> nameAgeMap = {};
    nameAgeMap["고유진"] = 23;
    print(nameAgeMap);

    Map<String, dynamic> dynamicMap = {};
    dynamicMap["a"] = 1;
    dynamicMap["b"] = "고양이";
    dynamicMap["c"] = true;
    print(dynamicMap);
    print("get dynamicMap : ${dynamicMap["b"]}");
    dynamicMap.remove("c");
    print("remove dynamicMap : $dynamicMap");
  }

  void collectionSet() {
    Set ss = {};
    ss.add("a");
    ss.add(1);
    print("collectionSet 1 : $ss");

    ss.remove("a");
    print("collectionSet 2 : $ss");
  }
}