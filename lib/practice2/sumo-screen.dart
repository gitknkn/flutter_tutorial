import 'dart:ffi';

import 'package:flutter/material.dart';

class SumoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: _createAppBar(context),
        body: _createBody(context),
        bottomNavigationBar: _createBottomNavigationBar(context),
        // floatingActionButton: _createFloatingActionButton(context),
      ),
    );
  }

  AppBar _createAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            child: Text(
              'カウルのおすすめ',
              style: TextStyle(
                color: Colors.green.shade600,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 6),
          ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            child: Text(
              'リフォーム済の',
              style: TextStyle(
                color: Colors.green.shade600,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createBody(context) {
    Widget _createConditions(IconData icon, String text) {
      return Row(
        children: [
          Icon(
            icon,
            size: 16,
          ),
          SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(fontSize: 10),
          ),
        ],
      );
    }

    Widget _mainImage(String image1, String image2) {
      final size = MediaQuery.of(context).size;
      final _halfWidth = (size.width - 12) / 2;
      return Row(
        children: [
          Image.asset(image1, width: _halfWidth),
          Image.asset(image2, width: _halfWidth),
        ],
      );
    }

    Widget _mainText(String mainText, String subTitle) {
      return Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Text(mainText),
            Text(
              subTitle,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('カウルのおすすめ'),
                  SizedBox(width: 6),
                  Text(
                    '新着3件',
                    style: TextStyle(color: Colors.red),
                  ),
                  SizedBox(width: 120),
                  Row(
                    children: [
                      Text(
                        '編集',
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(Icons.brush_outlined, color: Colors.green),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade300,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          _createConditions(Icons.directions_transit_outlined,
                              '東京駅・品川駅・川崎駅・横浜駅・目黒駅・恵比寿駅・渋谷駅'),
                          SizedBox(height: 4),
                          _createConditions(Icons.add, '下限なし〜2,000万円'),
                          SizedBox(height: 4),
                          _createConditions(Icons.request_quote_rounded,
                              '1R〜4LDK/10㎡以上/徒歩20分'),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _mainImage('images/sumo2.png', 'images/sumo1.png'),
              _mainText('Rising place川崎', '2,000万円'),
              _createConditions(
                  Icons.directions_transit_outlined, '京急本線 京急川崎駅より徒歩9分'),
              SizedBox(height: 4),
              _createConditions(Icons.add, '1k/21.24 南西向き'),
              SizedBox(height: 4),
              _createConditions(Icons.request_quote_rounded, '2階/15階建 築5年'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createBottomNavigationBar(context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home2'),
        ),
      ],
    );
  }
}
