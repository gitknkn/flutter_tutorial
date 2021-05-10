import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/screen/money_screen_statenotifier.dart';

final moneyStateNotifier =
    StateNotifierProvider((ref) => MoneyInfoScreenStateNotifier());

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
          children: [
            Container(
              child: state.isReadyData
                  ? _createBody(context, state.moneyInfoData)
                  : Container(),
            ),
            state.isLoading
                ? Container(
                    color: Color.fromARGB(128, 0, 0, 0),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Container(),
            _createFormButton(context),
          ],
        ),
      ),
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
    TextEditingController _currentMoneyCtrl = TextEditingController();
    final dateNow = DateTime.now();

    return AlertDialog(
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                controller: _currentMoneyCtrl,
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
              final formatter = DateFormat('yyyy-MM-dd');
              var data = MoneyInfoData(
                id: null,
                targetMoney: 0,
                currentMoney: int.tryParse(_currentMoneyCtrl.text),
                differenceMoney: 0,
                createdDate: formatter.format(dateNow),
              );
              if (_formKey.currentState.validate()) {
                await context
                    .read(moneyStateNotifier)
                    .writeCurrentMoneyInfoData(data);
                Navigator.pop(context);
              }
            },
          )
        ]);
  }

  Widget _createBody(BuildContext context, List<MoneyInfoData> moneyInfoData) {
    return ListView.builder(
        itemCount: moneyInfoData.length,
        itemBuilder: (context, index) {
          final data = moneyInfoData[index];
          return _buildCurrentMoneyList(context, data);
        });
  }

  Widget _buildCurrentMoneyList(BuildContext context, MoneyInfoData data) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('貯金額 : ${data.currentMoney}'),
          Text('日付 : ${data.createdDate.toString()}'),
        ],
      ),
    );
  }
}
