import 'package:get/get_state_manager/get_state_manager.dart'
    show GetxController;

class CounterController extends GetxController {
  int _count = 0;
  int get count => _count;

  void incrementCounter() {
    _count++;
    update();
  }

  void decrementCounter() {
    if (_count > 0) {
      _count--;
    }
    update();
  }
}
