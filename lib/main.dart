import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_crud/module.dart';
import 'package:hive_crud/page/home/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'service/theme/theme_service.dart';
import 'service/theme/themes.dart';


void main() async {
  locator();
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CRUD',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: HomePage(),
    );
  }
}
