import 'package:flutter/material.dart';
import 'package:hive_crud/components/custom_app_bar.dart';
import 'package:hive_crud/page/contacto/contacto_page.dart';
import 'package:hive_crud/page/produto/produto_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        drawer: Drawer(),
        appBar: customAppBar('HomePage'),
        body: TabBarView(
          children: [
            ContactoPage(),
            ProdutoPage(),
            ContactoPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
