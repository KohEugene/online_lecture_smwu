

import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {

  String textValue = "";
  TextEditingController controller = TextEditingController();

  // 생명 주기
  // 시작과 끝

  // 위젯이 생성될 때 최초 1번 진입
  // setState 호출 불가
  @override
  void initState() {
    controller.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  // 위젯이 종료될 때 1번 호출
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(title: Text("TextFormField"),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(controller.text),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextFormField(
                  controller: controller,
                  //onChanged: (value) {
                    //textValue = value;
                    //setState(() {});
                    //print("controller : ${controller.text}");
                  //},

                  keyboardType: TextInputType.text,
                  // obscureText: true,

                  // 글자 속성 변경
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),

                  // 커서 속성 변경
                  cursorColor: Colors.red,
                  cursorWidth: 6,
                  cursorRadius: Radius.circular(5),

                  maxLines: 2,        // 화면에 보이는 최대 줄 수
                  maxLength: 20,      // 최대 글자수

                  decoration: InputDecoration(
                    hintText: "글자를 입력해주세요.",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.purple
                      ),
                        borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
