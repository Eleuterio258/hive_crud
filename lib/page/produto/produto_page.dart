import 'package:flutter/material.dart';
import 'package:hive_crud/helper/db_conn.dart';
import 'package:hive_crud/model/employee.dart';
import 'package:hive_crud/service/emploee/emploee_service.dart';

class ProdutoPage extends StatefulWidget {
  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  var db = new EmploeeService();

  List contacto;

  bool isLload = false;

  Future contactoList() async {
    contacto = await db.allEmploeeRepository();
    setState(() {
      isLload = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, int i) {
        return ListTile(
            leading: CircleAvatar(
              child: Text("F"),
            ),
            title: Text("Catia"),
            onTap: () {});
      },
    );
  }
}
