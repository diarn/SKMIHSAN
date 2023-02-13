import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:leta/app/data/style.dart';

import '../controllers/nun_mati_controller.dart';

class NunMatiView extends GetView<NunMatiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImage.bmp.bg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _content(context),
        ],
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: btn(
                Icon(
                  FontAwesomeIcons.chevronLeft,
                  size: 14,
                ),
                11,
                () {
                  Get.back();
                },
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                controller.selectedSubject.value != 0
                    ? btn(
                        Icon(FontAwesomeIcons.arrowLeft),
                        10,
                        () {
                          controller.selectedSubject.value -= 1;
                          controller.selectedSubject.refresh();
                        },
                      )
                    : emptyBtn(10),
                Material(
                  borderRadius: BorderRadius.circular(30),
                  color: MyColor.pLight.withOpacity(0.25),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        controller.subject[controller.selectedSubject.value],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                controller.selectedSubject.value != 3
                    ? btn(
                        Icon(FontAwesomeIcons.arrowRight),
                        10,
                        () {
                          controller.selectedSubject.value += 1;
                          controller.selectedSubject.refresh();
                        },
                      )
                    : emptyBtn(10),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Expanded(
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white.withOpacity(0.35),
              ),
              child: SingleChildScrollView(
                child: Text(
                  controller.subjectData[controller.selectedSubject.value],
                  style: TextStyle(
                    fontSize: 18,
                    height: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget btn(
    Icon icon,
    double icPadding,
    Function()? func,
  ) {
    return Material(
      color: Colors.white.withOpacity(0.25),
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: func,
        borderRadius: BorderRadius.circular(100),
        child: Padding(
          padding: EdgeInsets.all(icPadding),
          child: icon,
        ),
      ),
    );
  }

  Widget emptyBtn(
    double icPadding,
  ) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        child: Padding(
          padding: EdgeInsets.all(icPadding),
          child: Icon(
            FontAwesomeIcons.leftLong,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
