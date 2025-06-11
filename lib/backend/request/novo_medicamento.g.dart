// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novo_medicamento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NovoMedicamento _$NovoMedicamentoFromJson(Map<String, dynamic> json) =>
    NovoMedicamento(
      nomeComercial: json['nomeComercial'] as String,
      nomeQuimico: json['nomeQuimico'] as String,
      descricao: json['descricao'] as String,
      imagem: json['imagem'] as String? ?? "imagem",
      tipoMedicamento: $enumDecode(
        _$TipoMedicamentoEnumMap,
        json['tipoMedicamento'],
      ),
      quantidade: json['quantidade'] as String,
      unidadeMedida: (json['unidadeMedida'] as num?)?.toInt() ?? 1,
      categoriaId: json['categoriaId'] as String,
    );

Map<String, dynamic> _$NovoMedicamentoToJson(NovoMedicamento instance) =>
    <String, dynamic>{
      'nomeComercial': instance.nomeComercial,
      'nomeQuimico': instance.nomeQuimico,
      'descricao': instance.descricao,
      'imagem': instance.imagem,
      'tipoMedicamento': _$TipoMedicamentoEnumMap[instance.tipoMedicamento]!,
      'quantidade': instance.quantidade,
      'unidadeMedida': instance.unidadeMedida,
      'categoriaId': instance.categoriaId,
    };

const _$TipoMedicamentoEnumMap = {
  TipoMedicamento.AltoCusto: 1,
  TipoMedicamento.Comum: 2,
};
