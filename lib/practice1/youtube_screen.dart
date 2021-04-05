import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_demo/card_widget.dart';

void main() => runApp(YoutubeScreen());

class YoutubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading:
            Image.asset('images/yt_logo_rgb_dark.png', fit: BoxFit.fitWidth),
        actions: <Widget>[
          FlatButton(
            child: Text('戻る', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          IconButton(
            icon: Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(Icons.circle_notifications, color: Colors.white),
          ),
          IconButton(
            icon: Icon(Icons.search_sharp, color: Colors.white),
          ),
          CircleAvatar(
            backgroundColor: Colors.purple,
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    height: 150,
                  ),
                  Wrap(
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.all(10),
                        // インスタンスを渡す予定だったが、解決できず。
                        // child: CardWidget(
                        //   text: '急上昇'
                        //   color: Colors.red[500],
                        // ),
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('急上昇'),
                          width: 150,
                          height: 20,
                          color: Colors.red[500],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('音楽'),
                          width: 150,
                          height: 20,
                          color: Colors.green,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('ゲーム'),
                          width: 150,
                          height: 20,
                          color: Colors.pink[300],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('ニュース'),
                          width: 150,
                          height: 20,
                          color: Colors.blue,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('学び'),
                          width: 150,
                          height: 20,
                          color: Colors.green,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('ライブ'),
                          width: 150,
                          height: 20,
                          color: Colors.orange,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('スポーツ'),
                          width: 150,
                          height: 20,
                          color: Colors.lightGreen[900],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      '急上昇動画',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Image.asset('images/box1.jpg'),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 5, bottom: 15),
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
                              child: Text(
                                "\"This is ARASHI LIVE 2020. 12. 31\" DigestMovie\nARASHI ・ 127万回視聴 ・ 1日前",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('images/asia.jpg'),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 5, bottom: 15),
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
                              child: Text(
                                "\"This is ARASHI LIVE 2020. 12. 31\" DigestMovie\nARASHI ・ 7万回視聴 ・ 7日前",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('images/logo.png'),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 5, bottom: 15),
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
                              child: Text(
                                "\"This is ARASHI LIVE 2020. 12. 31\" DigestMovie\nARASHI ・ 10億回視聴 ・ 100日前",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[900],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text(
              'ホーム',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.offline_bolt_sharp, color: Colors.white),
            title: Text(
              '保留',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Colors.white),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded, color: Colors.white),
            title: Text(
              '登録チャンネル',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_sharp, color: Colors.white),
            title: Text(
              'ライブラリ',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
        ],
      ),
    );
  }
}
