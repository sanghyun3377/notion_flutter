import 'package:flutter/material.dart';

class FristPage extends StatefulWidget {
  const FristPage({Key? key}) : super(key: key);

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        foregroundColor: Colors.white, // 아이콘의 색상을 지정합니다.
        backgroundColor: Colors.blue, // 버튼의 배경색을 지정합니다.
        elevation: 0.0, // 버튼의 음영 효과의 크기를 조절합니다.
        tooltip: '추가', // onPressed 콜백이 동작할 때 나타나는 툴팁을 정의합니다.
        splashColor: Colors.yellow, // 누르고 있지 않을 때 나타나는 색상을 지정합니다.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(99), // 버튼의 모양을 지정합니다.
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // FloatingActionButton이 화면에서 어디에 위치할지 지정합니다.
    );
  }
}
