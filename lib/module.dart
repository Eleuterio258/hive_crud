import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'repository/contacto/contacro_repository.dart';
import 'service/contacto/contacto_service.dart';

var getIt = GetIt.I;
void locator() {
  Dio dio = Dio();
  getIt.registerLazySingleton(() => dio);
  ContactoService contactoService = ContactoService(getIt.call());
  getIt.registerLazySingleton(() => contactoService);

  ContacroRepository contacroRepository = ContacroRepository(getIt.call());
  getIt.registerLazySingleton(() => contacroRepository);
}
