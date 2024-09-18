import 'dart:convert';

import 'package:http/http.dart' as http;

/**
 * Responsavel pela chamada a Api
 */
class ApiService {
  String? _url;

  Future<http.Response> getViaCep(String cep) async {
    _url = 'https://viacep.com.br/ws/${cep}/json/';
    http.Response response = await http.get(Uri.parse(_url!));
    return response;
  }
}
