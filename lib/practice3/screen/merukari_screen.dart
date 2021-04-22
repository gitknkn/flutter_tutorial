import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:youtube_demo/practice3/model/product_data.dart';
import 'package:youtube_demo/practice3/screen/merukari_screen_notifier.dart';

class MerukariScreen extends ConsumerWidget {
  final merukariScreenStateNotifier =
      StateNotifierProvider((ref) => MerukariScreenStateNotifier());

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(merukariScreenStateNotifier.state);
    final list = state.productDataList;

    return MaterialApp(
      home: Scaffold(
        appBar: _createAppBar(context),
        body: Stack(
          children: [
            state.isReading ? _createBody(context, list) : Container(),
            state.isLoading
                ? Container(
                    color: Color.fromARGB(32, 0, 0, 0),
                    child: Center(child: CircularProgressIndicator()),
                  )
                : Container(),
          ],
        ),
        bottomNavigationBar: _createBottomNavigationBar(context),
        floatingActionButton: _createActionButton(context),
      ),
    );
  }

  Widget _createAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Center(
        child: Text(
          '出品',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _createBody(BuildContext context, List<ProductData> productDataList) {
    if (productDataList == null) {
      return Container();
    }
    return ListView.builder(
      itemCount: productDataList.length,
      itemBuilder: (context, index) {
        final data = productDataList[index];
        if (index == 0) {
          return Column(
            children: [
              _buildHeader(),
              _buildSubHeader(),
              Divider(),
              _buildProductList(data),
            ],
          );
        } else {
          return Column(
            children: [
              Divider(),
              _buildProductList(data),
            ],
          );
        }
      },
    );
  }

  Widget _createBottomNavigationBar(context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none, color: Colors.black),
          label: 'お知らせ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.linked_camera, color: Colors.black),
          label: '出品',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code, color: Colors.black),
          label: 'メルペイ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_emoticon_outlined, color: Colors.black),
          label: 'マイページ',
        ),
      ],
    );
  }

  Widget _createActionButton(context) {
    return Container(
      width: 60,
      height: 60,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.red,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.linked_camera),
              Text('出品',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints.expand(height: 360),
          color: Colors.grey.shade300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Center(
                  child: Image.asset(
                    'images/meru1.png',
                    width: 360,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Container(
                margin: EdgeInsets.only(left: 16, bottom: 16),
                child: Text('出品へのショートカット'),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard('写真を撮る', Icons.local_see_outlined),
                  _buildCard('アルバム', Icons.photo),
                  _buildCard('バーコード', Icons.center_focus_weak_sharp, '(本・コスメ)'),
                  _buildCard('下書き一覧', Icons.my_library_books_outlined),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSubHeader() {
    return ListTile(
      title: Text('売れやすい物'),
      subtitle: Text('使わないモノを出品してみよう！',
          style: TextStyle(color: Colors.grey.shade500)),
      trailing: Text('すべて見る＞', style: TextStyle(color: Colors.blue)),
    );
  }

  Widget _buildCard(String text, IconData icon, [String subText = '']) {
    // subText,,,デフォルト引数は空文字
    return Container(
      width: 85,
      height: 85,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(height: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 8),
          ),
        ],
      ),
    );
  }

  Widget _buildProductList(ProductData productData) {
    // 変数 String型のproductPriceにint型のpriceを3桁カンマのフォーマットに代入
    final productPrice = NumberFormat('#,##0').format(productData.price);
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(productData.image),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productData.name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text(productPrice, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.local_fire_department_outlined,
                      color: Colors.blue, size: 16),
                  SizedBox(width: 2),
                  Text(
                    '${productData.favorites}人が探しています',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 72),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            width: 70,
            height: 35,
            child: Text('出品する', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
