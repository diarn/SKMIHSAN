import 'package:get/get.dart';

import '../controllers/mim_mati_controller.dart';

class MimMatiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MimMatiController>(
      () => MimMatiController(),
    );
  }
}
