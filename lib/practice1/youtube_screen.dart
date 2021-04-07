import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class YoutubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: _createAppBar(context),
      body: _createBody(context),
      bottomNavigationBar: _createBottomNavigationBar(context),
      floatingActionButton: createFooter(context),
    );
  }

  AppBar _createAppBar(context) {
    return AppBar(
      backgroundColor: Colors.grey[900],
      title: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset('images/yt_logo_rgb_dark.png'),
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.cast,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_rounded, color: Colors.white),
        ),
        CircleAvatar(
          minRadius: 2,
          backgroundColor: Colors.purple,
          child: Icon(Icons.person),
        ),
      ],
    );
  }

  Widget _createBody(BuildContext context) {
    final moveList =
        _createMoveInfoData(); //_createMoveInfoData配列(List<>)の変数moveListに代入
    return ListView.builder(
      itemCount: moveList.length, // itemCountに配列の要素を代入して、要素分を表示
      itemBuilder: (context, index) {
        final data = moveList[index]; // 作成している変数moveList[要素番号]を変数dataに代入
        if (index == 0) {
          // もし、要素番号が０なら、
          return Column(
            // Columnで３つのメソッドを返している。(_createMoveCell以外は０の時のみ表示)
            children: [
              _createCategory(context),
              categoryTitle(),
              _createMoveCell(data),
            ],
          );
        } else {
          return _createMoveCell(data); // 要素番号が０以外は、_createMoveCell(data)のみ表示
        }
      },
    );
  }

  Widget _createCategory(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final halfButtonWidth = (size.width - 16) / 2;
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Wrap(
        children: <Widget>[
          _createViewCard(
              halfButtonWidth, Icons.whatshot, '急上昇', Colors.red.shade500),
          _createViewCard(
              halfButtonWidth, Icons.bolt, '音楽', Colors.greenAccent),
          _createViewCard(
              halfButtonWidth, Icons.verified, 'ゲーム', Colors.pink.shade300),
          _createViewCard(halfButtonWidth, Icons.add, 'ニュース', Colors.blue),
          _createViewCard(
              halfButtonWidth, Icons.access_alarms_rounded, '学び', Colors.green),
          _createViewCard(halfButtonWidth, Icons.settings_remote_outlined,
              'ライブ', Colors.orange),
          _createViewCard(halfButtonWidth, Icons.sports_esports_outlined,
              'スポーツ', Colors.lightGreen.shade900),
        ],
      ),
    );
  }

  FloatingActionButton createFooter(context) {
    return FloatingActionButton(
      backgroundColor: Colors.blueGrey,
      child: Text('Back'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Card _createViewCard(
      double haltButtonWidth, IconData icon, String text, Color color) {
    return Card(
      color: color,
      margin: EdgeInsets.all(4),
      child: Container(
        width: haltButtonWidth,
        child: Row(
          children: [
            SizedBox(width: 12),
            Icon(
              icon,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 12),
              child: Text(text),
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryTitle() {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 4),
      child: Text(
        '急上昇動画',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _createMoveCell(MoveInfoData moveInfoData) {
    return Column(
      children: [
        Image.asset(moveInfoData.imagePath),
        Container(
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.only(top: 4, bottom: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.cast,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _videoMainText(moveInfoData.title),
                        _videoSubText(moveInfoData.subTitle),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _videoMainText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }

  Widget _videoSubText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white38,
        fontSize: 12,
      ),
    );
  }

  BottomNavigationBar _createBottomNavigationBar(context) {
    TextStyle _BottomNavigationBarItemStyle() {
      return TextStyle(
        fontSize: 8,
        color: Colors.white,
      );
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[900],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          title: Text(
            'ホーム',
            style: _BottomNavigationBarItemStyle(),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_album, color: Colors.white),
          title: Text(
            '検索',
            style: _BottomNavigationBarItemStyle(),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, color: Colors.white),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.white),
          title: Text(
            '登録チャンネル',
            style: _BottomNavigationBarItemStyle(),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.white),
          title: Text(
            'ライブラリ',
            style: _BottomNavigationBarItemStyle(),
          ),
        ),
      ],
    );
  }

  // ダーミーデーターをリスト配列<MoveInfoData>内でインスタンス化
  List<MoveInfoData> _createMoveInfoData() {
    return [
      MoveInfoData(
        'images/asia.jpg',
        'This is ARASHI LIVE 2020. 12. 31\" DigestMovie',
        'ARASHI ・ 10億回 ・ 67日前',
      ),
      MoveInfoData(
        'images/asia.jpg',
        'This is ARASHI LIVE 2020. 12. 31\" DigestMovie',
        'ARASHI ・ 10億回 ・ 67日前',
      ),
      MoveInfoData(
        'images/asia.jpg',
        'This is ARASHI LIVE 2020. 12. 31\" DigestMovie',
        'ARASHI ・ 10億回 ・ 67日前',
      ),
    ];
  }
}

// ダミーデータークラス
class MoveInfoData {
  final imagePath;
  final title;
  final subTitle;

  MoveInfoData(
    this.imagePath,
    this.title,
    this.subTitle,
  );
}
