import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:youtube_demo/moor_todo/db/db.dart';
import 'package:youtube_demo/moor_todo/screen/todo_screen_statenotifier.dart';

final todoStateNotifier =
    StateNotifierProvider((ref) => TodoScreenStateNotifier());

class ToDosScreen extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(todoStateNotifier.state);
    Todo todoItems;

    return Scaffold(
      appBar: AppBar(
        title: Text('TODO APP'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: state.isReadyData
                  ? _createBody(state.todosItems, context)
                  : Container(),
            ),
          ),
          state.isLoading
              ? Container(
                  color: Color.fromARGB(128, 0, 0, 0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container(),
        ],
      ),
      floatingActionButton: _createFloatingActionButton(context, todoItems),
    );
  }

  Widget _createBody(List<Todo> todosItems, BuildContext context) {
    return ListView.builder(
      itemCount: todosItems.length,
      itemBuilder: (context, i) {
        final data = todosItems[i];
        return _buildTodoList(context, data);
      },
    );
  }

  Widget _buildTodoList(BuildContext context, Todo data) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text('タイトル: ${data.title}'),
                SizedBox(height: 8),
                Text('本文: ${data.mainText}'),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('記入日: ${data.date.toString()}'),
                    SizedBox(width: 16),
                    Text('納期: ${data.deadLine}'),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 0, color: Colors.blueAccent.shade100),
        ],
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: '削除',
          color: Colors.redAccent,
          icon: Icons.delete,
          onTap: () {
            context.read(todoStateNotifier).deleteTodo(data);
          },
        ),
      ],
    );
  }

  Widget _createFloatingActionButton(BuildContext context, Todo todoItems) {
    return FloatingActionButton(
      backgroundColor: Colors.yellow,
      child: Icon(Icons.edit, color: Colors.blueAccent),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => _buildTodoDialog(context, todoItems),
        );
      },
    );
  }

  Widget _buildTodoDialog(BuildContext context, Todo todoItems) {
    final dateNow = DateTime.now();
    TextEditingController _titleCtrl = TextEditingController();
    TextEditingController _mainTextCtrl = TextEditingController();
    TextEditingController _deadLineCtrl = TextEditingController();

    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _titleCtrl,
              decoration: const InputDecoration(
                hintText: 'タイトルを入力',
                labelText: 'タイトル',
              ),
              validator: (String value) {
                return value.isEmpty ? 'タイトルを入力して下さい' : null;
              },
            ),
            TextFormField(
              controller: _mainTextCtrl,
              decoration: const InputDecoration(
                hintText: '本文を入力',
                labelText: '本文',
              ),
              validator: (String value) {
                return value.isEmpty ? '本文を入力して下さい' : null;
              },
            ),
            DateTimePicker(
              controller: _deadLineCtrl,
              dateMask: 'yyyy-MM-dd',
              type: DateTimePickerType.date,
              firstDate: DateTime(DateTime.now().year),
              lastDate: DateTime(DateTime.now().year + 5),
              locale: const Locale('ja'),
              decoration: InputDecoration(
                hintText: '納期を選択してください',
              ),
              validator: (value) {
                return value.isEmpty ? '納期を選択して下さい' : null;
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: Text('キャンセル'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: Text('保存'),
          onPressed: () async {
            final formatter = DateFormat('yyyy-MM-dd');
            var todoData = Todo(
              id: null,
              title: _titleCtrl.text,
              mainText: _mainTextCtrl.text,
              date: formatter.format(dateNow),
              deadLine: _deadLineCtrl.text,
            );
            if (_formKey.currentState.validate()) {
              await context.read(todoStateNotifier).writeTodo(todoData);
              Navigator.pop(context);
            }
          },
        )
      ],
    );
  }
}
