import 'package:flutter/material.dart';
import 'package:hive_crud/components/custom_app_bar.dart';
import 'package:hive_crud/model/contacto.dart';

class DetalhePage extends StatelessWidget {
  final Contacto contacto;

  final alinhamento = MainAxisAlignment.spaceBetween;
  DetalhePage({this.contacto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarDefault("Detalhe ${contacto.name}"),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: alinhamento,
            children: [
              Text("Nome"),
              Text(contacto.name),
            ],
          ),
          Row(
            mainAxisAlignment: alinhamento,
            children: [
              Text("Endereco"),
              Text(contacto.address),
            ],
          ),
          Row(
            mainAxisAlignment: alinhamento,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Descricao"),
              Text(contacto.description),
            ],
          ),
          Row(
            mainAxisAlignment: alinhamento,
            children: [
              Text("Email"),
              Text(contacto.email),
            ],
          ),
          Row(
            mainAxisAlignment: alinhamento,
            children: [
              Text("Celelar"),
              Text(contacto.phone),
            ],
          ),
        ],
      ),
    );
  }
}