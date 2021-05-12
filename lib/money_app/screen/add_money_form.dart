import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/screen/money_screen_statenotifier.dart';

final moneyStateNotifier =
    StateNotifierProvider((ref) => MoneyInfoScreenStateNotifier());

class CurrentMoneyForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  static var addMoneyResult = 0;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(moneyStateNotifier.state);
    return Scaffold(
      appBar: AppBar(
        title: Text('貯金額入力フォーム'),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
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
            final formatter = DateFormat('yyyy-MM-dd');
            var data = AddMoneyInfoData(
              id: null,
              addMoney: int.tryParse(_addMoneyCtrl.text),
              createdDate: formatter.format(dateNow),
            );

            if (_formKey.currentState.validate()) {
              // await context
              //     .read(moneyStateNotifier)
              //     .writeAddMoneyResult(addMoneyInfoData);
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

  Widget _createBody(
      BuildContext context, List<AddMoneyInfoData> addMoneyInfoData) {
    var _list = addMoneyInfoData.length;
    for (int i = 0; i < _list; i++) {
      addMoneyResult += addMoneyInfoData[i].addMoney;
    }
    return ListView.builder(
      itemCount: addMoneyInfoData.length,
      itemBuilder: (context, index) {
        final data = addMoneyInfoData[index];
        if (index == 0) {
          return Column(
            children: [
              _createFormButton(context),
              Text('合計金額 : ${addMoneyResult.toString()}'),
              SizedBox(height: 20),
              _buildCurrentMoneyList(context, data),
            ],
          );
        } else {
          return Column(
            children: [
              _buildCurrentMoneyList(context, data),
            ],
          );
        }
      },
    );
  }

  Widget _buildCurrentMoneyList(BuildContext context, AddMoneyInfoData data) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('貯金額 : ${data.addMoney}'),
          Text('日付 : ${data.createdDate.toString()}'),
        ],
      ),
    );
  }

  // int Function(BuildContext context, List<AddMoneyInfoData> addMoneyInfoData)
  //     addMoneyResultt = (context, addMoneyInfoData) {
  //   var _list = addMoneyInfoData.length;
  //   for (int i = 0; i < _list; i++) {
  //     addMoneyResult += addMoneyInfoData[i].addMoney;
  //   }
  //   return addMoneyResult;
  // };

  // int _buildAddMoney(
  //     BuildContext context, List<AddMoneyInfoData> addMoneyInfoData) {
  //   var _list = addMoneyInfoData.length;
  //   for (int i = 0; i < _list; i++) {
  //     addMoneyResult += addMoneyInfoData[i].addMoney;
  //   }
  //   return addMoneyResult;
  // }
}
