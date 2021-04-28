import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:youtube_demo/async/model/profile_data.dart';
import 'package:youtube_demo/async/state/profile_state.dart';

import '../../prefs.dart';

class AsyncScreenStateNotifier extends StateNotifier<ProfileState> {
  AsyncScreenStateNotifier() : super(ProfileState()) {
    loadUserData();
    // 最初に描画される
  }

  saveUserData(String name, String age, String birthday) async {
    state = state.copyWith(
      isLoading: true,
    );
    await Prefs.setName(name);
    await Prefs.setAge(int.parse(age));
    await Prefs.setBirthDay(birthday);
    loadUserData();
  }

  loadUserData() async {
    state = state.copyWith(
      isLoading: true,
    );
    final profileData = ProfileData(
      name: await Prefs.getName(),
      age: await Prefs.getAge(),
      birthday: await Prefs.getBirthDay(),
    );
    state = state.copyWith(
      isLoading: false,
      profileData: profileData,
    );
  }
}
