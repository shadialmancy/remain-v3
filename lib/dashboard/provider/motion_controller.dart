import 'package:remain/src/core/constants/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'motion_controller.g.dart';

@Riverpod(keepAlive: true)
class MotionController extends _$MotionController {
  @override
  int build() => 2;
  void setIndex(int index) {
    if (index >= 0 && index < 5) {
      logger.i('Setting index to $index');
      state = index;
    } else {
      throw Exception('Invalid index: $index');
    }
  }

  void resetIndex() {
    state = 2;
  }
}
