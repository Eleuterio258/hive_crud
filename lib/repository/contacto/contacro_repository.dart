import 'package:hive_crud/model/contacto.dart';
import 'package:hive_crud/service/contacto/contacto_service.dart';

class ContacroRepository {
  final ContactoService _contactoService;

  ContacroRepository(this._contactoService);

    Future<List<Contacto>> getAllContacto()=>_contactoService.getAllContacto();
 
  Future<Contacto> addContacto( Contacto contacto)=>_contactoService.addContacto(contacto);

  Future<Contacto> updateContacto(int id,Contacto contacto)=>_contactoService.updateContacto(id, contacto);

  Future<Contacto> deleteContacto(int id)=>_contactoService.deleteContacto(id);
}
