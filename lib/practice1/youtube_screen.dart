import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class YoutubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: _createAppBar(context),
      body: _createBody(context),
      bottomNavigationBar: _createBottomNavigationBar(context),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}

AppBar _createAppBar(context) {
  return AppBar(
    backgroundColor: Colors.grey[900],
    leading: Image.asset('images/yt_logo_rgb_dark.png', fit: BoxFit.fitWidth),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.cast, color: Colors.white),
      ),
      IconButton(
        icon: Icon(Icons.circle_notifications, color: Colors.white),
      ),
      IconButton(
        icon: Icon(Icons.find_replace_sharp, color: Colors.white),
      ),
      CircleAvatar(
        backgroundColor: Colors.purple,
        child: Icon(Icons.person),
      ),
    ],
  );
}

Widget _createBody(context) {
  final size = MediaQuery.of(context).size;
  final halfButtonWidth = (size.width - 16) / 2;

  Widget _cardContainer(String t) {
    String text = t;
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 30),
      child: Text(text),
      width: halfButtonWidth,
      height: 40,
    );
  }

  Widget _videoMainText(String t) {
    String text = t;
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }

  Widget _videoSubText(String t) {
    String text = t;
    return Text(
      '$text',
      style: TextStyle(
        color: Colors.white38,
        fontSize: 12,
      ),
    );
  }

  return ListView(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: Wrap(
              children: <Widget>[
                Card(
                  color: Colors.red[500],
                  margin: EdgeInsets.all(4),
                  child: _cardContainer('急上昇'),
                ),
                Card(
                  color: Colors.green,
                  margin: EdgeInsets.all(4),
                  child: _cardContainer('音楽'),
                ),
                Card(
                  color: Colors.pink[300],
                  margin: EdgeInsets.all(4),
                  child: _cardContainer('ゲーム'),
                ),
                Card(
                  color: Colors.blue,
                  margin: EdgeInsets.all(4),
                  child: _cardContainer('ニュース'),
                ),
                Card(
                  color: Colors.green,
                  margin: EdgeInsets.all(4),
                  child: _cardContainer('学び'),
                ),
                Card(
                  color: Colors.orange,
                  margin: EdgeInsets.all(4),
                  child: _cardContainer('ライブ'),
                ),
                Card(
                  color: Colors.lightGreen[900],
                  margin: EdgeInsets.all(4),
                  child: _cardContainer('スポーツ'),
                ),
              ],
            ),
          ),
          Container(
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
          ),
          Image.asset('images/box1.jpg'),
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
                          _videoMainText(
                              "This is ARASHI LIVE 2020. 12. 31\" DigestMovie"),
                          _videoSubText("SAKURA ・ 10万回 ・ 7日前"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset('images/asia.jpg'),
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(top: 4, bottom: 14),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.adb_sharp,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _videoMainText(
                              "This is ARASHI LIVE 2020. 12. 31\" DigestMovie"),
                          _videoSubText("HATAKE ・ 1万回 ・ 12日前"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset('images/logo.png'),
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(top: 4, bottom: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.auto_awesome,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _videoMainText(
                              "This is ARASHI LIVE 2020. 12. 31\" DigestMovie"),
                          _videoSubText("ARASHI ・ 10億回 ・ 67日前"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
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
