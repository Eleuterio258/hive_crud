import 'package:flutter/material.dart';
import 'package:hive_crud/service/theme/theme_service.dart';

Widget customAppBar(titolo) {
  return AppBar(
    title: Text(titolo),
    bottom: TabBar(
      tabs: [
        Icon(Icons.person),
        Icon(Icons.adjust_outlined),
         Icon(Icons.cached),
      ],
    ),
    actions: [
      IconButton(
          icon: Icon(Icons.lightbulb_outline_sharp),
          onPressed: ThemeService().switchTheme)
    ],
  );
}

Widget customAppBarDefault(titolo) {
  return AppBar(
    title: Text(titolo),
    actions: [
      IconButton(
          icon: Icon(Icons.lightbulb_outline_sharp),
          onPressed: ThemeService().switchTheme)
    ],
  );
}


