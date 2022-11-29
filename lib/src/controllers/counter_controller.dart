import 'package:get/get.dart'
    show Get, GetxController, Inst, IntExtension, RxInt;

class CounterController extends GetxController {
  final RxInt _count = 0.obs;
  RxInt get count => _count;
  static CounterController get to => Get.find();
  void incrementCounter() {
    _count.value++;
  }

  void decrementCounter() {
    if (_count.value > 0) {
      _count.value--;
    }
  }
}
