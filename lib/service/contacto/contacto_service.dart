import 'package:dio/dio.dart';
import 'package:hive_crud/model/contacto.dart';
import 'package:retrofit/http.dart';
part 'contacto_service.g.dart';

@RestApi(baseUrl: 'http://192.168.137.1/2021/2-FEV/contacto/api/')
abstract class ContactoService {
  factory ContactoService(Dio dio) = _ContactoService;
  @GET('contacto')
  Future<List<Contacto>> getAllContacto();
  @POST('addContacto')
  Future<Contacto> addContacto(@Body() Contacto contacto);
  @PUT('updatecontacto/{id}')
  Future<Contacto> updateContacto(int id, @Body() Contacto contacto);
  @DELETE('deleteContacto/{id}')
  Future<Contacto> deleteContacto(@Path() int id);
}
