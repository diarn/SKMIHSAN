import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leta/app/data/style.dart';
import 'package:material_color_gen/material_color_gen.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Leta",
      theme: ThemeData(
        primarySwatch: MyColor.primary.toMaterialColor(),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
