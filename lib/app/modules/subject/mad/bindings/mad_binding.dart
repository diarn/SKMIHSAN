import 'package:get/get.dart';

import '../controllers/mad_controller.dart';

class MadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MadController>(
      () => MadController(),
    );
  }
}
