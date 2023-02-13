import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:leta/app/data/style.dart';
import 'package:leta/app/routes/app_pages.dart';

import '../controllers/subject_controller.dart';

class SubjectView extends GetView<SubjectController> {
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
                image: AssetImage(
                  MyImage.bmp.bg,
                ),
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
          height: 44,
        ),
        Image.asset(
          MyImage.bmp.tajdiw2,
        ),
        Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: Get.width,
            child: menuBtn(
              "Nun Mati",
              32,
              () {
                Get.toNamed(Routes.NUN_MATI);
              },
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: Get.width,
            child: menuBtn(
              "Mim Mati",
              32,
              () => null,
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: Get.width,
            child: menuBtn(
              "Mad",
              32,
              () => null,
            ),
          ),
        ),
        SizedBox(
          height: 32,
        ),
      ],
    );
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

  Widget menuBtn(
    String label,
    double icPadding,
    Function()? func,
  ) {
    return Material(
      color: Colors.white.withOpacity(0.25),
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: func,
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: EdgeInsets.all(icPadding),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
