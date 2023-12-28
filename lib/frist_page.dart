import 'package:flutter/material.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: 100, //item 개수
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
              childAspectRatio: 2 / 3, //item 의 가로 1, 세로 2 의 비율
              mainAxisSpacing: 20, //수평 Padding
              crossAxisSpacing: 10, //수직 Padding
            ),
            itemBuilder: (BuildContext context, int index) {
              //item 의 반목문 항목 형성
              return Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Text('$index'),
              );
            }));
  }
}
