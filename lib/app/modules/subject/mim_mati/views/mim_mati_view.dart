import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mim_mati_controller.dart';

class MimMatiView extends GetView<MimMatiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MimMatiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MimMatiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
