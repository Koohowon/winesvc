import 'package:flutter/material.dart';
//콤마 들어가는거는 전부다 파라미터
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
          title: Text('와인 추천 서비스 APP',
            style: TextStyle(
              color: Colors.black, //텍스트 색상 변경
            ),),
          backgroundColor: Colors.white, // 앱바 배경 색상
          leading: IconButton( //왼쪽 끝에
            icon: Icon(Icons.menu),//메뉴 아이콘 생성
            color: Colors.black, //아이콘 색상 변경
            onPressed: (){

            },
          ),
          actions: <Widget>[ //오른쪽 끝에
            IconButton(  //아이콘 생성
              icon: Icon(Icons.call), //전화모양 아이콘 생성
              color: Colors.black, //아이콘 색상 변경
              onPressed: () {// 버튼이 눌렸을 때 동작할 코드
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("고객센터"),
                      content: Text("TEL : 010 - 7387 - 7262"),
                    );
                  },
                );
              },
            ),
          ],
        ), //상단에 들어갈 위젯
        body: InkWell( // 이 위젯으로 컨테이너 위젯 감싸서 그 위젯 클릭하게 만듬 (사전적 의미?)약간 위젯에 제스처 기능을 추가하는거?
          onTap: () {

          },

        ), //중단에 들어갈 위젯
        bottomNavigationBar: BottomAppBar(
          child: Column(
            mainAxisSize: MainAxisSize.min, //알아서 최소한의 사이즈로 맞춰주는 위젯
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('(주)주류주류', // 상호명 따로 만들고 밑에 사이즈박스랑 별개
                  style: TextStyle(fontSize: 15, //폰트 사이즈
                  fontWeight: FontWeight.bold)), //폰트 볼드체
              SizedBox(height: 5,), //여기에 설명란처럼 만들기,위에 텍스랑의 간격 차이
              Text("대표 : 구호원",style: TextStyle(fontSize: 12)),
              Text("사업자 번호 : 211-00-12345",style: TextStyle(fontSize: 12)),
              Text("본사 : 부산 광역시 해운대구 ",style: TextStyle(fontSize: 12)),
              Text("운영시간 : 10:00 ~ 18:00 주말/공휴일 휴무",style: TextStyle(fontSize: 12)),
              Text("와인 서비스 추천 애플리케이션이며 판매는 하지 않고 있습니다. ",style: TextStyle(fontSize: 12)),
            ],
          ),
        ), //하단에 들어갈 위젯
      ),
      debugShowCheckedModeBanner: false, // 오른쪽 위에 리본 없애기
    );
  }
}
