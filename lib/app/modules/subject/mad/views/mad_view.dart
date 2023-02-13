import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mad_controller.dart';

class MadView extends GetView<MadController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MadView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MadView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
