import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:leta/app/data/style.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  showMenuDialog() {
    Get.dialog(
      Dialog(
        backgroundColor: MyColor.pLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: dialog(),
      ),
    );
  }

  Widget dialog() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 37,
        vertical: 82,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          btn(
            Icon(
              FontAwesomeIcons.volumeOff,
              color: Colors.white,
            ),
            () {},
          ),
          btn(
            Icon(
              FontAwesomeIcons.envelopesBulk,
              color: Colors.white,
            ),
            () {},
          ),
          btn(
            Icon(
              FontAwesomeIcons.info,
              color: Colors.white,
            ),
            () {},
          ),
        ],
      ),
    );
  }

  Widget btn(
    Icon icon,
    func,
  ) {
    return Material(
      color: MyColor.pDark,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: func,
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: icon,
        ),
      ),
    );
  }
}
