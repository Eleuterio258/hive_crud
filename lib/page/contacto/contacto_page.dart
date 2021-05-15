import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive_crud/components/lista_dados.dart';
import 'package:hive_crud/model/contacto.dart';
import 'package:hive_crud/service/contacto/contacto_service.dart';

class ContactoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contactoService = ContactoService(Dio());
    Future<void> refresh() {
      return contactoService.getAllContacto();
    }

    return RefreshIndicator(
      onRefresh: refresh,
      child: FutureBuilder<List<Contacto>>(
        future: contactoService.getAllContacto(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Contacto> contacto = snapshot.data;
            return ListaDados(contacto: contacto);
          } else if (snapshot.hasError) return Text("Error");
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
