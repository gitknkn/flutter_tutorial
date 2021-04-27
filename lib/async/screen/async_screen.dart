import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/async/screen/async_screen_notifier.dart';
import 'package:youtube_demo/async/screen/data_validation.dart';
import 'package:youtube_demo/async/state/profile_state.dart';

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

final asyncScreenStateNotifier =
    StateNotifierProvider((ref) => AsyncScreenStateNotifier());

class AsyncScreen extends ConsumerWidget {
  var _nameController;
  var _ageController;
  var _birthdayController;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(asyncScreenStateNotifier.state);

    return Scaffold(
      body: SafeArea(
        child: _createBody(context, state),
      ),
      floatingActionButton: _createFloatingActionButton(context, state),
    );
  }

  Widget _createBody(BuildContext context, ProfileState state) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('名前', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 20),
              Text(state.isReadyData ? state.profileData.name : "未設定"),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('年齢', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 20),
              Text(
                  state.isReadyData ? state.profileData.age.toString() : '未設定'),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('誕生日', style: TextStyle(color: Colors.grey)),
              SizedBox(width: 20),
              Text(state.isReadyData ? state.profileData.birthday : '未設定'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createFloatingActionButton(BuildContext context, ProfileState state) {
    return FloatingActionButton(
      backgroundColor: Colors.grey.shade200,
      child: Icon(Icons.edit, color: Colors.blue.shade300),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => _buildAlertDialog(context, state),
        );
      },
    );
  }

  Widget _buildAlertDialog(BuildContext context, ProfileState state) {
    _nameController = TextEditingController(text: state.profileData.name);
    _ageController =
        TextEditingController(text: state.profileData.age.toString());
    _birthdayController =
        TextEditingController(text: state.profileData.birthday);

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
          ),
          TextField(
            controller: _ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: '年齢を入力',
              labelText: '年齢',
            ),
          ),
          TextField(
            controller: _birthdayController,
            decoration: const InputDecoration(
              hintText: '誕生日を入力',
              labelText: '誕生日',
            ),
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
            if (_isValid(context)) {
              context.read(asyncScreenStateNotifier).saveUserData(
                    _nameController.text,
                    _ageController.text,
                    _birthdayController.text,
                  );
              Navigator.pop(context);
            }
          },
        ),
      ],
    );
  }

  // バリデーションメソッド
  bool _isValid(BuildContext context) {
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
