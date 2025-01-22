

import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with SingleTickerProviderStateMixin{
  
  late TabController tabController = TabController(length: 8, vsync: this);
  String selectedTab = "none";
  List<String> labelList = ["고양이", "강아지", "토끼", "햄스터", "너구리", "다람쥐", "여우", "사자"];

  // 1. Tab 안에 들어가는 문자열들을 List<String> 배열로 만드세요.
  // 2. List<String>과 List.generate를 사용해서 Tab들을 추가하세요.
  // 3. onTap함수가 호출 됐을 때 선택된 Tab의 문자열을 selectedTab에 입력 후 화면을 업데이트하세요
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TabBar"),),
      body: Column(
        children:[
          Text(selectedTab),
          TabBar(
              controller: tabController,
              onTap: (value) {
                selectedTab = labelList[value];
                setState(() {});
              },
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              overlayColor: WidgetStateProperty.all(Colors.blue.shade100),
              splashBorderRadius: BorderRadius.circular(10),
              indicator: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 5,color: Colors.red),
              ),
              // indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorWeight: 10,
              dividerHeight: 5,
              dividerColor: Colors.black,
              padding: EdgeInsets.all(30),
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                ...List.generate(labelList.length, (index) {
                  return Tab(text: labelList[index],);
                },)
              ]
          ),
        ]
      ),
    );
  }
}
