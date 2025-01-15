

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnPracticeScreen extends StatelessWidget {
  const ColumnPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column 실습"),),
      // Container 위젯은 사이즈를 지정하지 않는다면, 가능한 최대로 커짐
      body: Container(
        width: 300,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,

          // min : 사이즈 최소화 -> 자식 위젯의 사이즈만큼
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
            ),
            Container(
                width: 100,
                height: 100,
                color: Colors.green
            )
          ],
        ),
      ),
    );
  }
}
