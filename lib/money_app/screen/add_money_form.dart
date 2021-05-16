import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/screen/money_screen_statenotifier.dart';

class CurrentMoneyForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(moneyStateNotifier.state);
    return Scaffold(
      appBar: AppBar(
        title: Text('貯金額入力フォーム'),
      ),
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.topCenter,
          children: [
            state.isReadyData
                ? _createBody(context, state.addMoneyInfoData)
                : Container(),
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
      ),
    );
  }

  Widget _createBody(
      BuildContext context, List<AddMoneyInfoData> addMoneyInfoData) {
    // final state = watch(moneyStateNotifier.state);
    return ListView.builder(
      itemCount: addMoneyInfoData.length,
      itemBuilder: (context, index) {
        final data = addMoneyInfoData[index];
        if (index == 0) {
          return Column(
            children: [
              _createFormButton(context),
              SizedBox(height: 20),
              // Text('合計金額 : ${state.totalAddMoney.toString()}'),
              Consumer(builder: (context, watch, child) {
                final state = watch(moneyStateNotifier.state);
                return Text(
                  '合計金額 : ${state.totalAddMoney.toString()}円',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                );
              }),
              SizedBox(height: 20),
              Divider(height: 20),
              _buildCurrentMoneyList(context, data),
              Divider(height: 20),
            ],
          );
        } else {
          return Column(
            children: [
              _buildCurrentMoneyList(context, data),
              Divider(height: 20),
            ],
          );
        }
      },
    );
  }

  Widget _createFormButton(BuildContext context) {
    return ElevatedButton(
      child: Text('貯金額入力フォーム'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => _buildFormDialog(context),
        );
      },
    );
  }

  Widget _buildFormDialog(BuildContext context) {
    TextEditingController _addMoneyCtrl = TextEditingController();
    final dateNow = DateTime.now();
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: _addMoneyCtrl,
              decoration: const InputDecoration(
                hintText: '貯金金額を入力して下さい',
                labelText: '貯金額',
              ),
              validator: (String value) {
                return value.isEmpty ? '貯金金額を入力して下さい' : null;
              },
            ),
          ],
        ),
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
          onPressed: () async {
            final formatter = DateFormat('yy-MM-dd');
            var data = AddMoneyInfoData(
              id: null,
              addMoney: int.tryParse(_addMoneyCtrl.text),
              createdDate: formatter.format(dateNow),
            );
            if (_formKey.currentState.validate()) {
              await context
                  .read(moneyStateNotifier)
                  .writeAddMoneyInfoData(data);
              Navigator.pop(context);
            }
          },
        )
      ],
    );
  }

  Widget _buildCurrentMoneyList(BuildContext context, AddMoneyInfoData data) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.2,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('貯金額 : ${data.addMoney}円'),
            Text('日付 : ${data.createdDate.toString()}'),
          ],
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'delete',
          color: Colors.redAccent,
          icon: Icons.delete,
          onTap: () {
            context.read(moneyStateNotifier).deleteMoneyInfoData(data);
          },
        ),
      ],
    );
  }
}
