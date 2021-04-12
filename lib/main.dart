import 'package:flutter/material.dart';
import 'package:youtube_demo/practice1/youtube_screen.dart';
import 'package:youtube_demo/practice2/sumo-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      routes: <String, WidgetBuilder>{
        '/practice1/youtube_screen': (BuildContext context) => YoutubeScreen(),
        '/practice2/sumo-screen': (BuildContext context) => SumoScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
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
                    Navigator.of(context).pushNamed('/practice2/sumo-screen');
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
