import 'package:get/get.dart';

import '../controllers/nun_mati_controller.dart';

class NunMatiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NunMatiController>(
      () => NunMatiController(),
    );
  }
}
