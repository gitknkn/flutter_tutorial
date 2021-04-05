import 'package:flutter/material.dart';
import 'package:youtube_demo/screen/home_screen.dart';
import 'package:youtube_demo/practice1/youtube_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YouTubeDemo(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => YouTubeDemo(),
        '/practice1/youtube_screen': (BuildContext context) => YoutubeScreen(),
      },
    );
  }
}

class YouTubeDemo extends StatelessWidget {
  final double con_margin = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('YouTube Demo'),
          backgroundColor: Colors.black,
        ),
        body: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(con_margin),
                color: Colors.black,
                child: Center(
                  child: ElevatedButton(
                    child: Text('YouTubeDemo'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      primary: Colors.red[100],
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed('/practice1/youtube_screen');
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(con_margin),
                color: Colors.black,
                child: Center(
                  child: ElevatedButton(
                    child: Text('予備軍１'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      primary: Colors.red[100],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(con_margin),
                color: Colors.black,
                child: Center(
                  child: ElevatedButton(
                    child: Text('予備軍２'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      primary: Colors.red[100],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
