import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_demo/prefs.dart';
import 'package:youtube_demo/async/data_validation.dart';

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
// Dialog, TextEditingController, Validation

class AsyncScreen extends StatefulWidget {
  @override
  _AsyncScreenState createState() => _AsyncScreenState();
}

class _AsyncScreenState extends State<AsyncScreen> {
  // 変更可能なフィールド
  String _name;
  int _age;
  String _birthday;

  // TextEditingControllerを格納する為の変数
  // TextFieldの入力内容を管理し、入力内容を画面に描画できる
  var _nameController;
  var _ageController;
  var _birthdayController;

  // アプリ起動時に一度だけ実行する処理 super.initState()は、必須
  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  _loadUserData() async {
    _name = await Prefs.getName();
    _age = await Prefs.getAge();
    _birthday = await Prefs.getBirthDay();
    setState(() {});
    // setStateを配置しないと描画されないので、注意
  }

  _saveUserData(String name, String age, String birthday) async {
    await Prefs.setName(name);
    await Prefs.setAge(int.parse(age));
    await Prefs.setBirthDay(birthday);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _createBody(context),
      ),
      floatingActionButton: _createFloatingActionButton(),
    );
  }

  Widget _createBody(context) {
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
        showDialog(
          context: context,
          builder: (_) => _buildAlertDialog(context),
        ).then((value) => _loadUserData());
      },
    );
  }

  Widget _buildAlertDialog(BuildContext context) {
    _nameController = TextEditingController(text: _name);
    _ageController = TextEditingController(text: _age.toString());
    _birthdayController = TextEditingController(text: _birthday);

    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: '名前を入力して下さい',
              labelText: '名前',
            ),
            onChanged: (String text) {
              setState(() {
                _name = text;
              });
            },
          ),
          TextField(
            controller: _ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: '年齢を入力',
              labelText: '年齢',
            ),
            onChanged: (String num) {
              setState(() {
                _age = int.parse(num);
              });
            },
          ),
          TextField(
            controller: _birthdayController,
            decoration: const InputDecoration(
              hintText: '誕生日を入力',
              labelText: '誕生日',
            ),
            onChanged: (String text) {
              setState(() {
                _birthday = text;
              });
            },
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          child: Text('キャンセル'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: Text('保存'),
          onPressed: () {
            if (_isValid()) {
              _saveUserData(_nameController.text, _ageController.text,
                  _birthdayController.text);
              setState(() {
                Navigator.pop(context);
              });
            }
          },
        ),
      ],
    );
  }

  // バリデーションメソッド
  bool _isValid() {
    final name = _nameController.text;
    final age = _ageController.text;
    final birthday = _birthdayController.text;

    List<String> errorMessage = <String>[];

    // 名前が空のとき
    if (name.isEmpty) {
      errorMessage.add('名前が空です');
    }

    //年齢が空または、数値(数値形式)でない時
    if (age.isEmpty || double.tryParse(name) != null) {
      errorMessage.add('年齢が空もしくは数字ではありません');
    }

    //誕生のフォーマットじゃない時
    if (!DateValidation.isDate(birthday)) {
      errorMessage.add('誕生日の形式が正しくありません');
    }

    if (errorMessage.isNotEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          final List<Widget> children = [];
          errorMessage.forEach((element) {
            children.add(Text(element));
          });
          return CupertinoAlertDialog(
            title: Text("入力エラー"),
            content: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: Column(
                children: children,
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("閉じる"),
                isDestructiveAction: true,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
      return false;
    }
    return true;
  }
}
