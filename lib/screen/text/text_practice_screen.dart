

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPracticeScreen extends StatelessWidget {
  const TextPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Text 실습"),),
        body: Column(
          children: [
            Text("Text 위젯 실습입니다. 색상은 deepPOrange입니다.",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  letterSpacing: 2.5,
                  height: 1.1
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        )
    );
  }
}
