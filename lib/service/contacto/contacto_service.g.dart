// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacto_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ContactoService implements ContactoService {
  _ContactoService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://192.168.137.1/2021/2-FEV/contacto/api/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<Contacto>> getAllContacto() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('contacto',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Contacto.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Contacto> addContacto(contacto) async {
    ArgumentError.checkNotNull(contacto, 'contacto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = contacto;
    final _result = await _dio.request<Map<String, dynamic>>('addContacto',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Contacto.fromJson(_result.data);
    return value;
  }

  @override
  Future<Contacto> updateContacto(id, contacto) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(contacto, 'contacto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = contacto;
    final _result = await _dio.request<Map<String, dynamic>>(
        'updatecontacto/{id}',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Contacto.fromJson(_result.data);
    return value;
  }

  @override
  Future<Contacto> deleteContacto(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'deleteContacto/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Contacto.fromJson(_result.data);
    return value;
  }
}
