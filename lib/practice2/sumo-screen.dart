import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class SumoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: _createAppBar(context),
        body: _createBody(context),
        bottomNavigationBar: _createBottomNavigationBar(),
        floatingActionButton: _createFloatingActionButton(context),
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
          Badge(
            badgeContent: Text('1', style: TextStyle(color: Colors.white)),
            position: BadgePosition.topEnd(top: -6, end: -6),
            child: ElevatedButton(
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
          ),
        ],
      ),
    );
  }

  Widget _createBody(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(12),
                        child: Text(
                          'カウルのおすすめ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          '新着3件',
                          style: TextStyle(color: Colors.red),
                        ),
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
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              _showConditions(Icons.directions_transit_outlined,
                                  '東京駅・品川駅・川崎駅・横浜駅・目黒駅・恵比寿駅・渋谷駅'),
                              SizedBox(height: 4),
                              _showConditions(Icons.add, '下限なし〜2,000万円'),
                              SizedBox(height: 4),
                              _showConditions(Icons.request_quote_rounded,
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
              padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _showMainImage('images/sumo1.png', 'images/sumo2.png'),
                  _showMainText('Rising place川崎', '2,000万円'),
                  _showSubText(
                      Icons.directions_transit_outlined, '京急本線 京急川崎駅より徒歩9分'),
                  SizedBox(height: 4),
                  _showSubText(Icons.add, '1k/21.24 南西向き'),
                  SizedBox(height: 4),
                  _showSubText(Icons.request_quote_rounded, '2階/15階建 築5年'),
                  SizedBox(height: 4),
                  _choiceActionButton(
                      '興味なし', Icons.delete, 'お気に入り', Icons.favorite_border),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _showMainImage('images/sumo1.png', 'images/sumo2.png'),
                  _showMainText('Rising place川崎', '2,000万円'),
                  _showSubText(
                      Icons.directions_transit_outlined, '京急本線 京急川崎駅より徒歩9分'),
                  SizedBox(height: 4),
                  _showSubText(Icons.add, '1k/21.24 南西向き'),
                  SizedBox(height: 4),
                  _showSubText(Icons.request_quote_rounded, '2階/15階建 築5年'),
                  SizedBox(height: 4),
                  _choiceActionButton(
                      '興味なし', Icons.delete, 'お気に入り', Icons.favorite_border),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _showMainImage('images/sumo1.png', 'images/sumo2.png'),
                  _showMainText('Rising place川崎', '2,000万円'),
                  _showSubText(
                      Icons.directions_transit_outlined, '京急本線 京急川崎駅より徒歩9分'),
                  SizedBox(height: 4),
                  _showSubText(Icons.add, '1k/21.24 南西向き'),
                  SizedBox(height: 4),
                  _showSubText(Icons.request_quote_rounded, '2階/15階建 築5年'),
                  SizedBox(height: 4),
                  _choiceActionButton(
                      '興味なし', Icons.delete, 'お気に入り', Icons.favorite_border),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _createBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'お気に入り',
        ),
        BottomNavigationBarItem(
          icon: Badge(
            badgeContent: Text('1', style: TextStyle(color: Colors.white)),
            child: Icon(Icons.message),
          ),
          label: 'メッセージ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'マイページ',
        ),
      ],
    );
  }

  Widget _createFloatingActionButton(context) {
    return FloatingActionButton(
      backgroundColor: Colors.grey.shade300,
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('Back'),
    );
  }

  Widget _showConditions(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16),
        SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 10))
      ],
    );
  }

  Widget _showMainImage(String image1, String image2) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(image2, fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(image1, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showMainText(String mainText, String subTitle) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }

  Widget _showSubText(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
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
      ),
    );
  }

  Widget _choiceActionButton(
      String text1, IconData icon1, String text2, IconData icon2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 160,
          child: ElevatedButton.icon(
            icon: Icon(
              icon1,
              color: Colors.grey,
            ),
            label: Text(text1),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.grey,
              side: BorderSide(color: Colors.grey, width: 1),
            ),
            onPressed: null,
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: 160,
          child: ElevatedButton.icon(
            icon: Icon(
              icon2,
              color: Colors.grey,
            ),
            label: Text(text2),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.grey,
              side: BorderSide(color: Colors.grey, width: 1),
            ),
            onPressed: null,
          ),
        ),
      ],
    );
  }

  List<HouseData> _houseDataList() {
    return [
      HouseData(
        'images/sumo1.png',
        'images/sumo2.png',
        'Rising place川崎',
        '2,000万円',
      ),
      HouseData(
        'images/sumo1.png',
        'images/sumo2.png',
        'Rising place川崎',
        '2,000万円',
      ),
      HouseData(
        'images/sumo1.png',
        'images/sumo2.png',
        'Rising place川崎',
        '2,000万円',
      ),
    ];
  }
}

// ダミー情報
class HouseData {
  final imagePath1;
  final imagePath2;
  final houseName;
  final housePrice;

  HouseData(this.imagePath1, this.imagePath2, this.houseName, this.housePrice);
}
