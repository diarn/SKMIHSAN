import 'package:get/get.dart';

import 'package:leta/app/modules/home/bindings/home_binding.dart';
import 'package:leta/app/modules/home/views/home_view.dart';
import 'package:leta/app/modules/subject/bindings/subject_binding.dart';
import 'package:leta/app/modules/subject/mad/bindings/mad_binding.dart';
import 'package:leta/app/modules/subject/mad/views/mad_view.dart';
import 'package:leta/app/modules/subject/mim_mati/bindings/mim_mati_binding.dart';
import 'package:leta/app/modules/subject/mim_mati/views/mim_mati_view.dart';
import 'package:leta/app/modules/subject/nun_mati/bindings/nun_mati_binding.dart';
import 'package:leta/app/modules/subject/nun_mati/views/nun_mati_view.dart';
import 'package:leta/app/modules/subject/views/subject_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SUBJECT,
      page: () => SubjectView(),
      binding: SubjectBinding(),
      children: [
        GetPage(
          name: _Paths.NUN_MATI,
          page: () => NunMatiView(),
          binding: NunMatiBinding(),
        ),
        GetPage(
          name: _Paths.MIM_MATI,
          page: () => MimMatiView(),
          binding: MimMatiBinding(),
        ),
        GetPage(
          name: _Paths.MAD,
          page: () => MadView(),
          binding: MadBinding(),
        ),
      ],
    ),
  ];
}
