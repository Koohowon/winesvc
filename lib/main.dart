import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //구글 앱
      home: Scaffold( //상중하로 나눠주는 위젯
        appBar: AppBar(
          centerTitle: true, // 타이틀을 중간으로 한다
          title: Text('와인 추천 서비스 APP'),

          actions: [ //오른쪽 끝에
            IconButton(  //아이콘 생성
              icon: const Icon(Icons.call), //전화모양 아이콘 생성
              onPressed: () {// 버튼이 눌렸을 때 동작할 코드
              },
            ),
          ],
        ), //상단에 들어갈 위젯
        body: Container(), //중단에 들어갈 위젯
        bottomNavigationBar: BottomAppBar(), //하단에 들어갈 위젯
      ),
      debugShowCheckedModeBanner: false, // 오른쪽 위에 리본 없애기
    );
  }
}
