import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/screen/current_money_form.dart';
import 'package:youtube_demo/money_app/screen/money_screen_statenotifier.dart';
import 'package:youtube_demo/money_app/screen/target_money_form.dart';

final moneyStateNotifier =
    StateNotifierProvider((ref) => MoneyInfoScreenStateNotifier());

class MoneyScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(moneyStateNotifier.state);

    return Scaffold(
      appBar: AppBar(
        title: Text('Chokin-app'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('目標入力画面'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TargetMoneyForm();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('貯金入力画面'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return CurrentMoneyForm();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.yellow,
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.blueAccent,
              child: Text(
                '合計金額: 8000円',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.blueAccent,
              child: Text(
                '差額金額: 2000円',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createBody() {}
}
