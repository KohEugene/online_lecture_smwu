

import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/network/member_list_screen.dart';
import 'package:online_lecture_smwu/screen/network/member_register_screen.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({super.key});

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

// 회원 전체 조회
// 회원 가입
// 회원 한개 조회
// 회원 삭제
class _NetworkScreenState extends State<NetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MemberRegisterScreen();
            },));
          }, child: Text("회원가입")),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MemberListScreen();
            },));
          }, child: Text("회원 목록"))
        ],
      ),
    );
  }
}
