import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class SumoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: _createAppBar(context),
        body: _createBody(context),
        bottomNavigationBar: _createBottomNavigationBar(),
        floatingActionButton: _createActionButton(context),
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
          SizedBox(width: 30),
          IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.green.shade400,
            icon: Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    );
  }

  Widget _createBody(BuildContext context) {
    final houseDataList = _createHouseDataList();
    return ListView.builder(
      itemCount: houseDataList.length,
      itemBuilder: (context, index) {
        final data = houseDataList[index];
        if (index == 0) {
          return Column(
            children: [
              _createHeaderInfo(context),
              _createMainInfo(data),
            ],
          );
        } else {
          return _createMainInfo(data);
        }
      },
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

  Widget _createHeaderInfo(context) {
    return Container(
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
                      _buildConditions(Icons.directions_transit_outlined,
                          '東京駅・品川駅・川崎駅・横浜駅・目黒駅・恵比寿駅・渋谷駅'),
                      SizedBox(height: 4),
                      _buildConditions(Icons.add, '下限なし〜2,000万円'),
                      SizedBox(height: 4),
                      _buildConditions(
                          Icons.request_quote_rounded, '1R〜4LDK/10㎡以上/徒歩20分'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _createMainInfo(HouseData houseData) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMainImage(houseData.imagePath1, houseData.imagePath2),
          _buildMainText(houseData.houseName, houseData.housePrice),
          _buildSubText(Icons.directions_transit_outlined, houseData.station),
          SizedBox(height: 4),
          _buildSubText(Icons.add, houseData.infoData1),
          SizedBox(height: 4),
          _buildSubText(Icons.request_quote_rounded, houseData.infoData2),
          SizedBox(height: 4),
          _buildActionButton(
              '興味なし', Icons.delete, 'お気に入り', Icons.favorite_border),
        ],
      ),
    );
  }

  Widget _createActionButton(context) {
    return Container(
      width: 60,
      height: 60,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.search),
              Text(
                '物件',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConditions(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16),
        SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 10))
      ],
    );
  }

  Widget _buildMainImage(String image1, String image2) {
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

  Widget _buildMainText(String mainText, String subTitle) {
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

  Widget _buildSubText(IconData icon, String text) {
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

  Widget _buildActionButton(
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
                side: BorderSide(
                  color: Colors.grey,
                  width: 1,
                )),
            onPressed: () {},
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
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  List<HouseData> _createHouseDataList() {
    return [
      HouseData(
        'images/sumo1.png',
        'images/sumo2.png',
        'Rising place川崎',
        '2,300万円',
        '京急本線 京急川崎駅より徒歩9分',
        '1k/21.24 南西向き',
        '2階/15階建 築5年',
      ),
      HouseData(
        'images/sumo1.png',
        'images/sumo2.png',
        'Dream 押上',
        '3,200万円',
        '半蔵門線 押上駅より徒歩5分',
        '1k/21.24 南向き',
        '3階/3階建 築2年',
      ),
      HouseData(
        'images/sumo1.png',
        'images/sumo2.png',
        'American 亀戸',
        '1,700万円',
        '東日本JR線 亀戸駅より徒歩20分',
        '2k/42.48 南西向き',
        '3階/3階建 築2年',
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
  final station;
  final infoData1;
  final infoData2;

  HouseData(
    this.imagePath1,
    this.imagePath2,
    this.houseName,
    this.housePrice,
    this.station,
    this.infoData1,
    this.infoData2,
  );
}
