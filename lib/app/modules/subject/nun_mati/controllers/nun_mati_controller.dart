import 'package:get/get.dart';

class NunMatiController extends GetxController {
  final List<String> subject = [
    "Idzhar",
    "Idgham",
    "Iqlab",
    "Ikhfa",
  ];

  final List<String> subjectData = [
    "Menurut bahasa, idzhar adalah bayan atau jelas, sedangkan menurut istilah adalah membaca nun mati (نْ) atau tanwin ( ـَــًـ , ـِــٍـ , ـُــٌـ ) dengan jelas tanpa suara dengung atau disamarkan.\nAda enam huruf izhar, yaitu hamzah (ء), kha (ح), ha (خ), ain (ع), ghain (غ), dan ha' (هـ).\nContoh bacaan izhar:\nمَآ أَغْنَىٰ عَنْهُ ",
    "Secara bahasa, idgham artinya idkhal atau memasukkan, sedangkan secara istilah adalah menyamarkan atau meleburkan nun mati atau tanwin dengan huruf-huruf idgham sehingga seolah-olah menjadi satu huruf yang bertasydid.\nIdgham terbagi menjadi dua, sebagai berikut:\nIdgham bigunnah\nIdgham bigunnah yaitu jika nun mati atau tanwin bertemu dengan huruf ya (ي), nun (ن), mim (م), dan wau (و), maka harus dibaca idgham disertai dengan dengung di hidung (gunnah).\nContoh bacaan idgham bighunnah:\nأَبِى لَهَبٍ وَتَبَّ\nIdgham bilagunnah\nIdgham bilagunnah yaitu jika nun mati atau tanwin bertemu dengan lam (ل) dan ra (ر), maka harus dibaca idgham tanpa disertai dengung di hidung (gunnah).\nContoh bacaan idgham bilagunnah:\nوَلَمْ يَكُنْ لَهُ",
    "Secara bahasa, iqlab artinya memindahkan atau mengubah sesuatu dari asalnya, sedangkan menurut istilah adalah mengubah atau menggantikan nun mati menjadi mim disertai dengungan jika bertemu dengan huruf ba (ب).\nContoh bacaan iqlab:\nمِنْۢ بَعْدِ",
    "Secara bahasa, ikhfa artinya satru yang berarti menutupi atau menyamarkan. Adapun menurut istilah, ikhfa adalah menyamarkan nun mati atau tanwin karena muncul suara dengungan (gunnah) jika bertemu dengan 15 huruf.\nHuruf ikhfa antara lain kaf ( ك ), qaf ( ق ), fa' ( ف ), zha ( ظ ), tha ( ط ), dhad ( ض ), shad ( ص ), syin ( ش ), sin ( س ), za' ( ز ), dzal ( ذ ), dal ( د ), jim ( ج ), tsa' ( ث ), dan ta' ( ت ).\nContoh bacaan ikhfa:\nلَقَدْ خَلَقْنَا ٱلْإِنسَٰنَ",
  ];

  final RxInt selectedSubject = 0.obs;

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
}
