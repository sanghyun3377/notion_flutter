import 'dart:async';
import 'package:flutter/material.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});

  // 2초마다 카운트를 세는 Stream<int>데이터타입으로 리턴해준다.
  Stream<int> _addStreamValue() {
    var res = Stream<int>.periodic(Duration(seconds: 2), (counter) => counter);
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: StreamBuilder(
              stream: _addStreamValue(),
              // initialData: '초기값',  앱을 처음시작하여 아무 데이터가 없을때 표시해줄 값(!snapshot.hasData 대신사용가능)
              builder: (context, snapshot) {
                //해당 부분은 data를 아직 받아 오지 못했을 때 실행되는 부분
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                //error가 발생하게 될 경우 반환하게 되는 부분
                else if (snapshot.hasError) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Error: ${snapshot.error}', // 에러명을 텍스트에 뿌려줌
                      style: TextStyle(fontSize: 15),
                    ),
                  );
                }
                // 데이터를 정상적으로 받아오게 되면 다음 부분을 실행하게 되는 부분
                else {
                  return Text(
                    snapshot.data.toString(), // 비동기 처리를 통해 받은 데이터를 텍스트에 뿌려줌
                    style: TextStyle(fontSize: 20),
                  );
                }
              })),
    );
  }
}
