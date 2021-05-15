import 'package:flutter/material.dart';
import 'package:hive_crud/model/contacto.dart';
import 'package:hive_crud/page/produto/detalhe_page.dart';

class ListaDados extends StatelessWidget {
  const ListaDados({
    Key key,
    @required this.contacto,
  }) : super(key: key);

  final List<Contacto> contacto;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacto.length,
      itemBuilder: (context, i) {
        return ListTile(
          leading: CircleAvatar(
            child: Text(
              contacto[i].name.substring(0, 2).toUpperCase(),
            ),
          ),
          title: Text(contacto[i].name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalhePage(
                  contacto: contacto[i],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
