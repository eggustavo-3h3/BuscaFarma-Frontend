import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:json_annotation/json_annotation.dart';

part 'novo_medicamento.g.dart';

@JsonSerializable()
class NovoMedicamento {
  final String nomeComercial;
  final String nomeQuimico;
  final String descricao;
  final String imagem;
  final TipoMedicamento tipoMedicamento;
  final String quantidade;
  final int unidadeMedida;
  final String categoriaId;

  NovoMedicamento({
    required this.nomeComercial,
    required this.nomeQuimico,
    required this.descricao,
    this.imagem = "imagem",
    required this.tipoMedicamento,
    required this.quantidade,
    this.unidadeMedida = 1,
    required this.categoriaId,
  });

  factory NovoMedicamento.fromJson(Map<String, dynamic> json) => _$NovoMedicamentoFromJson(json);

  Map<String, dynamic> toJson() => _$NovoMedicamentoToJson(this);

}