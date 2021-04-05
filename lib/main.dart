import 'package:flutter/material.dart';
import 'package:youtube_demo/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YouTubeDemo(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => YouTubeDemo(),
        '/screen/home_screen': (BuildContext context) => HomeScreen(),
      },
    );
  }
}

class YouTubeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('YouTube Demo'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: ElevatedButton(
              child: Text('一覧画面へ'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Colors.red[100],
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/screen/home_screen');
              },
            ),
          ),
        ),
      ),
    );
  }
}
