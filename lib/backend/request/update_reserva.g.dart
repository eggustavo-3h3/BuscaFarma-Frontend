// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_reserva.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateReserva _$UpdateReservaFromJson(Map<String, dynamic> json) =>
    UpdateReserva(
      id: json['id'] as String,
      usuarioId: json['usuarioId'] as String,
      medicamentoId: json['medicamentoId'] as String,
      data: DateTime.parse(json['dataReserva'] as String),
      imagemReceita: json['imagemReceita'] as String,
      tipoAtendimento: $enumDecode(
        _$TipoAtendimentoEnumMap,
        json['enumTipoAtendimento'],
      ),
      status: $enumDecode(_$StatusReservaEnumMap, json['status']),
      retiranteNome: json['retiranteNome'] as String?,
      retiranteCPF: json['retiranteCPF'] as String?,
    );

Map<String, dynamic> _$UpdateReservaToJson(
  UpdateReserva instance,
) => <String, dynamic>{
  'id': instance.id,
  'usuarioId': instance.usuarioId,
  'medicamentoId': instance.medicamentoId,
  'dataReserva': instance.data.toIso8601String(),
  'imagemReceita': instance.imagemReceita,
  'enumTipoAtendimento': _$TipoAtendimentoEnumMap[instance.tipoAtendimento]!,
  'status': _$StatusReservaEnumMap[instance.status]!,
  'retiranteNome': instance.retiranteNome,
  'retiranteCPF': instance.retiranteCPF,
};

const _$TipoAtendimentoEnumMap = {
  TipoAtendimento.Atendida: 1,
  TipoAtendimento.NaoAtendida: 2,
  TipoAtendimento.Cancelada: 3,
};

const _$StatusReservaEnumMap = {
  StatusReserva.Pendente: 0,
  StatusReserva.Finalizada: 1,
  StatusReserva.FaltaEstoque: 2,
  StatusReserva.Indisponivel: 3,
};
