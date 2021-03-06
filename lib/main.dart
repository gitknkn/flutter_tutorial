import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/async/screen/async_screen.dart';
import 'package:youtube_demo/money_app/screen/money_screen.dart';
import 'package:youtube_demo/moor_todo/screen/todo_screen.dart';
import 'package:youtube_demo/mvvm/screen/home/home_screen.dart';
import 'package:youtube_demo/practice1/screen/youtube_screen.dart';
import 'package:youtube_demo/practice2/screen/sumo_screen.dart';
import 'package:youtube_demo/practice3/screen/merukari_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ja'),
      ],
      home: MainScreen(),
      routes: <String, WidgetBuilder>{
        '/practice1/youtube_screen': (BuildContext context) => YoutubeScreen(),
        '/practice2/sumo-screen': (BuildContext context) => SumoScreen(),
        '/practice3/merukari-screen': (BuildContext context) =>
            MerukariScreen(),
        '/async/screen/async_screen': (BuildContext context) => AsyncScreen(),
        '/mvvm/screen/home/home_screen': (context) => HomeScreen(),
        '/moor_todo/screen/todos_screen': (context) => ToDosScreen(),
        '/money_app/screen/money_screen': (context) => MoneyScreen(),
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
          mainAxisAlignment: MainAxisAlignment.center,
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
            Container(
              color: Colors.black,
              child: Center(
                child: ElevatedButton(
                  child: Text('Merukari'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/practice3/merukari-screen');
                  },
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Center(
                child: ElevatedButton(
                  child: Text('Async'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/async/screen/async_screen');
                  },
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Center(
                child: ElevatedButton(
                  child: Text('QiitaClient'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/mvvm/screen/home/home_screen');
                  },
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Center(
                child: ElevatedButton(
                  child: Text('Moor ToDo'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/moor_todo/screen/todos_screen');
                  },
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Center(
                child: ElevatedButton(
                  child: Text('Chokin-app'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/money_app/screen/money_screen');
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
