import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:newdishticket/pages/home/home.dart';
import 'package:newdishticket/test.dart';

import 'controllers/work_controller/main_work_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final MainWorkController controller = Get.put(MainWorkController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dish Ticket',
      home: Home(),
    );
  }
}

