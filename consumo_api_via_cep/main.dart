import 'controller/CepController.dart';
import 'model/endereco.dart';

Future<void> main(List<String> args) async {
  CepController cepController = CepController();
  String cep = '04176260';

  Endereco endereco = await cepController.buscarEndereco(cep);

  print(endereco.logradouro);
  print(endereco.bairro);
  print(endereco.localidade);
  print(endereco.uf);
  print(endereco.estado);
  print(endereco.regiao);
}
