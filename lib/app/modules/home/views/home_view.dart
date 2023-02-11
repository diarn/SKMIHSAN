import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:leta/app/data/style.dart';
import 'package:leta/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.pDark,
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: btn(
                Icon(
                  FontAwesomeIcons.bars,
                  size: 14,
                ),
                11,
                () {
                  controller.showMenuDialog();
                },
              ),
            ),
          ),
          SizedBox(
            height: 44,
          ),
          Image.asset(
            MyImage.bmp.tajdiw,
          ),
          SizedBox(
            height: 116,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn(
                  Icon(
                    FontAwesomeIcons.play,
                    size: 25,
                  ),
                  35,
                  () {
                    Get.toNamed(
                      Routes.SUBJECT,
                    );
                  },
                ),
                btn(
                  Icon(
                    FontAwesomeIcons.gamepad,
                    size: 25,
                  ),
                  35,
                  () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              MyImage.bmp.bocil,
            ),
          ),
          SizedBox(
            height: 64,
          ),
        ],
      ),
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
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: EdgeInsets.all(icPadding),
          child: icon,
        ),
      ),
    );
  }
}
