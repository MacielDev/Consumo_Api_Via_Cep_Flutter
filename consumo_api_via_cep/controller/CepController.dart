import 'dart:async';
import 'dart:convert';

import '../model/endereco.dart';
import '../service/apiService.dart';

class CepController {
  ApiService api = ApiService();

//Funcao para consultar um CEP
  Future<Endereco> buscarEndereco(String cep) async {
    var response = await api.getViaCep(cep);
    if (response.statusCode == 200) {
      Map<String, dynamic> datas = jsonDecode(response.body);

      Endereco endereco = Endereco(
          logradouro: datas['logradouro'],
          bairro: datas['bairro'],
          localidade: datas['localidade'],
          uf: datas[' uf'],
          estado: datas['estado'],
          regiao: datas['regiao']);

      return endereco;
    } else {
      throw Exception('Problemas ao se conectar com a api');
    }
  }
}
