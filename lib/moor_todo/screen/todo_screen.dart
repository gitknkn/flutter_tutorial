import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:youtube_demo/moor_todo/screen/todo_screen_statenotifier.dart';
import 'package:youtube_demo/moor_todo/state/todo_state.dart';

final todoScreenStateNotifier =
    StateNotifierProvider((ref) => TodoScreenStateNotifier());

class ToDosScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(todoScreenStateNotifier.state);

    return Scaffold(
      body: SafeArea(
        child: _createBody(context),
      ),
      floatingActionButton: _createFloatingActionButton(context, state),
    );
  }

  Widget _createBody(BuildContext context) {
    return Center(
      child: ListView.builder(
        // itemCount: list.length,
        itemBuilder: (context, index) {
          // final item = list[index];
          return Column(children: [
            _buildToDoItems(context),
          ]);
        },
      ),
    );
  }

  Widget _buildToDoItems(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('タイトル: xxxxxxxxxx'),
            SizedBox(height: 10),
            Text('メイン: titletitletitle'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('記入日: ----/--/--'),
                // SizedBox(width: 20),
                Text('納期日: ----/--/--'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _createFloatingActionButton(BuildContext context, TodoState state) {
    return FloatingActionButton(
      backgroundColor: Colors.blueAccent,
      child: Icon(Icons.edit, color: Colors.yellow),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => _buildAlertDailog(context, state),
        );
      },
    );
  }

  Widget _buildAlertDailog(BuildContext context, TodoState state) {
    TextEditingController _titleController = TextEditingController();
    TextEditingController _mainTextController = TextEditingController();
    TextEditingController _deadlineController = TextEditingController();
    // final date = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 1),
      );
      if (date == null) {
        return Text('キャンセルしました');
      }
    }

    return AlertDialog(
      content: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              labelText: 'タイトルを入力して下さい',
            ),
          ),
          TextField(
            controller: _mainTextController,
            decoration: const InputDecoration(
              labelText: '本文を入力して下さい',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              // labelText: '日付を選択して下さい',
              suffixIcon: IconButton(
                iconSize: 30,
                onPressed: () {
                  _selectDate(context);
                },
                color: Colors.blue,
                icon: Icon(Icons.add_circle_outline),
              ),
            ),
          ),
          TextField(
            controller: _deadlineController,
            decoration: const InputDecoration(
              labelText: '期限を入力して下さい',
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
              // context.read(todoScreenStateNotifier).writeTodo(
              //
              // );
              Navigator.pop(context);
            }),
      ],
    );
  }
}
