import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/money_app/db/db.dart';
import 'package:youtube_demo/money_app/screen/money_screen_statenotifier.dart';

final moneyStateNotifier =
    StateNotifierProvider((ref) => MoneyInfoScreenStateNotifier());

class TargetMoneyForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(moneyStateNotifier.state);

    return Scaffold(
      appBar: AppBar(
        title: Text('目標金額入力フォーム'),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              child: state.isReadyData
                  ? _createBody(context, state.targetMoneyInfoData)
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
          ],
        ),
      ),
    );
  }

  Widget _createFormButton(BuildContext context) {
    return ElevatedButton(
      child: Text('目標金額入力フォーム'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => _buildFormDialog(context),
        );
      },
    );
  }

  Widget _buildFormDialog(BuildContext context) {
    TextEditingController _targetMoneyCtrl = TextEditingController();

    return AlertDialog(
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _targetMoneyCtrl,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: '目標金額を入力',
            labelText: '目標金額',
          ),
          validator: (value) {
            final intValue = int.tryParse(value);
            return intValue == null ? '目標金額を数字で入力して下さい' : null;
          },
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
            var data = TargetMoneyInfoData(
              id: null,
              targetMoney: int.tryParse(_targetMoneyCtrl.text),
            );
            // var target = int.tryParse(_targetMoneyCtrl.text);
            if (_formKey.currentState.validate()) {
              await context
                  .read(moneyStateNotifier)
                  .writeTargetMoneyInfoData(data);
              print(data.targetMoney);
              Navigator.pop(context);
            }
          },
        ),
      ],
    );
  }

  Widget _createBody(
      BuildContext context, List<TargetMoneyInfoData> moneyInfoData) {
    return ListView.builder(
      itemCount: moneyInfoData.length,
      itemBuilder: (context, index) {
        final data = moneyInfoData[index];
        return Column(
          children: [
            _createFormButton(context),
            SizedBox(height: 20),
            _buildTargetMoneyList(context, data),
          ],
        );
      },
    );
  }

  Widget _buildTargetMoneyList(BuildContext context, TargetMoneyInfoData data) {
    return Container(
      child: Text('目標金額 : ${data.targetMoney.toString()}'),
    );
  }
}
