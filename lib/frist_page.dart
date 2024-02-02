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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부 결정
              builder: (context) {
                return Dialog(
                  // 전체 다이얼로그의 모양 설정
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // 테두리
                  ),
                  // 내용을 구성하는 부분
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // 다이얼로그 제목
                        Text(
                          '다이얼로그 제목',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        // 다이얼로그 내용
                        Text(
                          '다이얼로그 내용입니다. 이 부분은 여러 줄일 수 있습니다. 다이얼로그 내용입니다. 이 부분은 여러 줄일 수 있습니다. 다이얼로그 내용입니다. 이 부분은 여러 줄일 수 있습니다.',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        // 버튼들
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // 취소 버튼
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                '취소',
                              ),
                            ),
                            // 확인 버튼
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                '확인',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text('다이얼로그 열기'),
        ),
      ),
    );
  }
}
