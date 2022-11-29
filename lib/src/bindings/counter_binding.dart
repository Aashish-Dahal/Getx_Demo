import 'package:get/get.dart' show Bindings, Get, Inst;
import 'package:getx_demo/src/controllers/counter_controller.dart'
    show CounterController;

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}
