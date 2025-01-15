

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowPracticeScreen extends StatelessWidget {
  const RowPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row 실습"),),
      body: Container(
        height: 300,
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
