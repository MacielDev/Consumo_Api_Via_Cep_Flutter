class Endereco {
  String? _logradouro;
  String? _bairro;
  String? _localidade;
  String? _uf;
  String? _estado;
  String? _regiao;

  Endereco({
    required String? logradouro,
    required String? bairro,
    required String? localidade,
    required String? uf,
    required String? estado,
    required String? regiao,
  }) {
    this._logradouro = logradouro;
    this._bairro = bairro;
    this._localidade = localidade;
    this._uf = uf;
    this._estado = estado;
    this._regiao = regiao;
  }
  // Getters and Setters

  String? get logradouro {
    return _logradouro;
  }

  String? get bairro {
    return _bairro;
  }

  String? get localidade {
    return _localidade;
  }

  String? get uf {
    return _uf;
  }

  String? get estado {
    return _estado;
  }

  String? get regiao {
    return _regiao;
  }
}
