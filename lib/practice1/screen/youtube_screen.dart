import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_demo/practice1/model/movie_info_data.dart';
import 'package:youtube_demo/practice1/screen/youtube_screen_notifier.dart';

class YoutubeScreen extends ConsumerWidget {
  final youtubeScreenStateNotifier =
      StateNotifierProvider((ref) => YoutubeScreenStateNotifier());
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(youtubeScreenStateNotifier.state);
    final list = state.movieInfoDataList;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: _createAppBar(context),
      body: Stack(
        children: [
          state.isReadyData ? _createBody(context, list) : Container(),
          state.isLoading
              ? Container(
                  color: Color.fromARGB(128, 0, 0, 0),
                  child: Center(child: CircularProgressIndicator()),
                )
              : Container(),
        ],
      ),
      bottomNavigationBar: _createBottomNavigationBar(context),
    );
  }

  AppBar _createAppBar(context) {
    return AppBar(
      backgroundColor: Colors.grey[900],
      title: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset('images/yt_logo_rgb_dark.png'),
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.cast,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_rounded, color: Colors.white),
        ),
        CircleAvatar(
          minRadius: 2,
          backgroundColor: Colors.purple,
          child: Icon(Icons.person),
        ),
      ],
    );
  }

  Widget _createBody(
      BuildContext context, List<MovieInfoData> movieInfoDataList) {
    if (movieInfoDataList == null) {
      return Container();
    }
    return ListView.builder(
      itemCount: movieInfoDataList.length,
      itemBuilder: (context, index) {
        final data = movieInfoDataList[index];
        if (index == 0) {
          return Column(
            children: [
              _createCategory(context),
              _categoryTitle(),
              _createMoveCell(data),
            ],
          );
        } else {
          return _createMoveCell(data);
        }
      },
    );
  }

  Widget _createCategory(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final halfButtonWidth = (size.width - 16) / 2;
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Wrap(
        children: <Widget>[
          _createViewCard(
              halfButtonWidth, Icons.whatshot, '急上昇', Colors.red.shade500),
          _createViewCard(
              halfButtonWidth, Icons.bolt, '音楽', Colors.greenAccent),
          _createViewCard(
              halfButtonWidth, Icons.verified, 'ゲーム', Colors.pink.shade300),
          _createViewCard(halfButtonWidth, Icons.add, 'ニュース', Colors.blue),
          _createViewCard(
              halfButtonWidth, Icons.access_alarms_rounded, '学び', Colors.green),
          _createViewCard(halfButtonWidth, Icons.settings_remote_outlined,
              'ライブ', Colors.orange),
          _createViewCard(halfButtonWidth, Icons.sports_esports_outlined,
              'スポーツ', Colors.lightGreen.shade900),
        ],
      ),
    );
  }

  Card _createViewCard(
      double haltButtonWidth, IconData icon, String text, Color color) {
    return Card(
      color: color,
      margin: EdgeInsets.all(4),
      child: Container(
        width: haltButtonWidth,
        child: Row(
          children: [
            SizedBox(width: 12),
            Icon(
              icon,
              color: Colors.white,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 12),
              child: Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryTitle() {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 4),
      child: Text(
        '急上昇動画',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _createMoveCell(MovieInfoData moveInfoData) {
    return Column(
      children: [
        Image.asset(moveInfoData.imagePath),
        Container(
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.only(top: 4, bottom: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.adb_sharp,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _stylingMovieMainText(moveInfoData.title),
                        _stylingMovieSubText(moveInfoData.subTitle),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _stylingMovieMainText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }

  Widget _stylingMovieSubText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white38,
        fontSize: 12,
      ),
    );
  }

  BottomNavigationBar _createBottomNavigationBar(context) {
    return BottomNavigationBar(
      unselectedLabelStyle: TextStyle(fontSize: 8),
      unselectedItemColor: Colors.white,
      selectedFontSize: 8,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[900],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_album, color: Colors.white),
          label: '検索',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, color: Colors.white),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.white),
          label: '登録チャンネル',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.white),
          label: 'ライブラリ',
        ),
      ],
    );
  }
}
