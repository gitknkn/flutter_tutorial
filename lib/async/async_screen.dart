import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_demo/prefs.dart';

//画面初期化時に、Preferencesより名前、年齢、誕生日をロードし画面に表示する
//  - 未保存の場合、すべての項目に未設定と表示する
//画面内に、ペンアイコンの編集ボタンを設置する
//  - 編集ボタンをタップすると入力ダイアログを表示する
//  - 名前、年齢、誕生日を入力できるようにすること
//  - キャンセル、保存の2つのボタンを設置すること
//保存ボタンをタップすると、Preferencesに保存すること
//バリデーションをもうけること
//  - 名前は値があること
//  - 年齢は値があり、数値であること
//  - 誕生日は値があること
//ダイアログを閉じると保存した値が更新されていること
// ■確認項目
// StatefulWidget, async, await, Future
// Dialog, TextEdittingController, Validation

class AsyncScreen extends StatefulWidget {
  @override
  _AsyncScreenState createState() => _AsyncScreenState();
}

class _AsyncScreenState extends State<AsyncScreen> {
  String _name;
  int _age;
  String _birthday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _createBody(),
      ),
      floatingActionButton: _createFloatingActionButton(),
    );
  }

  Widget _createBody() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('名前', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 20),
              Text(_name != null ? _name : '未設定'),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('年齢', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 20),
              Text(_age != null ? _age.toString() : '未設定'),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('誕生日', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 20),
              Text(_birthday != null ? _birthday : '未設定'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Colors.grey.shade200,
      child: Icon(Icons.edit, color: Colors.blue.shade300),
      onPressed: () {
        // _createDialog();
      },
    );
  }

  // Widget _createDialog() {
  //   return showDialog(BuildContext context) {
  //
  //   }
  // }
}
