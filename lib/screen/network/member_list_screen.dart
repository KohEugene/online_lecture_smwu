

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/network/member_detail_screen.dart';
import 'package:online_lecture_smwu/screen/network/member_model.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {

  Dio dio = Dio(BaseOptions(baseUrl: "https://7210-110-8-126-227.ngrok-free.app"));
  bool loading = true;
  List<MemberModel> dataList = [];

  // 1. 멤버 목록 호출
  // 1-1. 멤버 목록 호출할 때 loading UI 표출
  // 2. 멤버 목록 ListView로 출력
  // 3. 멤버 목록 중 하나 클릭했을 때 화면 이동
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<void> getData() async {
    Response response = await dio.get("/api/v1/member/all");
    await Future.delayed(Duration(seconds: 1));

    // as : 캐스팅
    // Iterable : 반복적인 형테의 데이터
    // element : {"email": ~ , "description": ~}
    // ?? : 앞의 값이 null이라면 뒤의 값을 입력하라
    dataList = response.data
        .map<MemberModel>(
          (e) => MemberModel(
        e["email"] ?? "",
        e["description"] ?? "",
      ),
    ).toList();

    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MemberList"),),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : memberListView(),
      );
  }

  Widget memberListView() {
    return ListView.builder(
        itemCount: dataList.length,
        padding: EdgeInsets.symmetric(vertical: 12),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MemberDetailScreen(
                      email: dataList[index].email,
                      dio: dio,);
                },)).then(
                  (value) {
                    if(value != null && value is bool && value) {
                      getData();
                    }
                  },
                );
              },
              child: item(dataList[index]));
        },
    );
  }

  Widget item(MemberModel member) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("이메일 : ${member.email}",
            style: TextStyle(fontSize: 15),),
          Text("설명 : ${member.description}",
            style: TextStyle(fontSize: 15),)
        ],
      ),
    );
  }
}
