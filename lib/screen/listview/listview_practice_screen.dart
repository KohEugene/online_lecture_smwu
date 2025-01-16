

import 'package:flutter/material.dart';

class ListviewPracticeScreen extends StatelessWidget {
  const ListviewPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> dataList = [];
    for (int i = 0; i < 30; i++) {
      dataList.add(i);
    }
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder"),),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center
              )
          );
        },
      ),
    );
  }
}
