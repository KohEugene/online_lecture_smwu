

import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/todo/todo_model.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {

  List<TodoModel> todoList = [
    TodoModel("산책", false),
    TodoModel("수영", false)
  ];
  final TextEditingController controller = TextEditingController();

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
        appBar: AppBar(title: Text("Todo-List"),),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.text
                  ),
                ),
                TextButton(onPressed: () {
                  if(controller.text.isEmpty) return;   // 비어있을 때는 등록 안함
                  if(todoList.any((element) => controller.text == element.name)) return;    // 같은 내용이 있는 경우
                  //todoList.firstWhere((element) {
                    //return element.name == controller.text;
                  //},);
                  todoList.add(TodoModel(controller.text, false));
                  controller.text = "";
                  setState(() {});
                },
                    child: Text("등록")
                )
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return item(todoList[index], index);
                  },
                separatorBuilder: (context, index) {
                  return Container(width: double.infinity, height: 1, color: Colors.grey);
                  },
              ),
            )
          ]
        )
      ),
    );
  }


  Widget item(TodoModel todoModel, int index) {
    return Row(
      children: [
        Checkbox(
          value: todoModel.complete,
          onChanged: (value) {
            todoModel.complete = value!;
            setState(() {});
          },
        ),
        Expanded(child: Text(todoModel.name)),
        IconButton(
            onPressed: () {
              // todoModel에 있는 정보를 사용해서 값을 체크해서 삭제
              //todoList.removeWhere((element) => element.name == todoModel.name);
              //setState(() {});
              // index를 사용해서 삭제
              todoList.removeAt(index);
              setState(() {});
            },
            icon: const Icon(Icons.delete)
        )
      ],
    );
  }
}
