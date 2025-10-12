import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

  // Método para conversão para JSON
  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
    };
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }

  // Método para conversão para JSON
  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((dep) => dep.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeProjeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeProjeto;
    _funcionarios = funcionarios;
  }

  // Método para conversão para JSON
  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((func) => func.toJson()).toList(),
    };
  }
}

void main() {
  // 1. Criar vários objetos Dependentes
  var dependente1 = Dependente("Carlos");
  var dependente2 = Dependente("Ana");
  var dependente3 = Dependente("João");

  // 2. Criar vários objetos Funcionario
  var funcionario1 = Funcionario("Pedro", [dependente1, dependente2]);
  var funcionario2 = Funcionario("Maria", [dependente3]);

  // 3. Associar os Dependentes criados aos respectivos funcionários
  // (já realizado na criação dos funcionários)

  // 4. Criar uma lista de Funcionarios
  List<Funcionario> funcionarios = [funcionario1, funcionario2];

  // 5. Criar um objeto EquipeProjeto chamando o método construtor que dá nome ao projeto e insere uma coleção de funcionários
  var equipeProjeto = EquipeProjeto("Projeto Alpha", funcionarios);

  // 6. Printar no formato JSON o objeto EquipeProjeto
  String jsonEquipeProjeto = jsonEncode(equipeProjeto.toJson());
  print(jsonEquipeProjeto);
}
