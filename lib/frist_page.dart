import 'package:flutter/material.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});

  // 비동기 처리 (2초후 '데이터'를 리턴한다)
  Future _future() async {
    await Future.delayed(Duration(seconds: 2));
    return '데이터';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: _future(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
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
            }),
      ),
    );
  }
}
