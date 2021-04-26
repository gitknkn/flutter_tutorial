import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:youtube_demo/async/state/async_screen_state.dart';

class AsyncScreenStateNotifier extends StateNotifier<AsyncScreenState> {
  AsyncScreenStateNotifier() : super(AsyncScreenState());
}
