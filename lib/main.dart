import 'package:flutter/material.dart';
import 'package:youtube_demo/practice1/youtube_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainScreen(),
      routes: <String, WidgetBuilder>{
        '/practice1/youtube_screen': (BuildContext context) => YoutubeScreen(),
      },
    );
  }
}

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Main Screen'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Center(
                child: ElevatedButton(
                  child: Text('YouTube'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/practice1/youtube_screen');
                  },
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Center(
                child: ElevatedButton(
                  child: Text('Sumo'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
