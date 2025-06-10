import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/backend/model/status_reserva.dart';
import 'package:buscafarma/backend/model/tipo_atendimento.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_reserva.g.dart';

@JsonSerializable()
class UpdateReserva {
  final String id;
  final String usuarioId;
  final String medicamentoId;

  @JsonKey(name: "dataReserva")
  final DateTime data;

  final String imagemReceita;

  @JsonKey(name: "enumTipoAtendimento")
  final TipoAtendimento tipoAtendimento;

  final StatusReserva status;

  final int? quantidade;

  final String? retiranteNome;
  final String? retiranteCPF;

  UpdateReserva({
    required this.id,
    required this.usuarioId,
    required this.medicamentoId,
    required this.data,
    required this.imagemReceita,
    required this.tipoAtendimento,
    required this.status,
    required this.retiranteNome,
    required this.retiranteCPF,
    required this.quantidade,
  });

  factory UpdateReserva.fromJson(Map<String, dynamic> json) =>
      _$UpdateReservaFromJson(json);

  factory UpdateReserva.indisponivel(Reserva reserva) => UpdateReserva(
    id: reserva.id,
    usuarioId: reserva.usuario.id,
    medicamentoId: reserva.medicamento.id,
    data: reserva.data,
    imagemReceita: reserva.imagemReceita,
    tipoAtendimento: TipoAtendimento.NaoAtendida,
    status: StatusReserva.Indisponivel,
    quantidade: null,
    retiranteNome: null,
    retiranteCPF: null,
  );

  factory UpdateReserva.faltaEstoque(Reserva reserva) => UpdateReserva(
    id: reserva.id,
    usuarioId: reserva.usuario.id,
    medicamentoId: reserva.medicamento.id,
    data: reserva.data,
    imagemReceita: reserva.imagemReceita,
    tipoAtendimento: TipoAtendimento.NaoAtendida,
    status: StatusReserva.FaltaEstoque,
    quantidade: null,
    retiranteNome: null,
    retiranteCPF: null,
  );

  factory UpdateReserva.atendida(
    Reserva reserva,
    int quantidade,
    String retiranteNome,
    String retiranteCPF,
  ) => UpdateReserva(
    id: reserva.id,
    usuarioId: reserva.usuario.id,
    medicamentoId: reserva.medicamento.id,
    data: reserva.data,
    imagemReceita: reserva.imagemReceita,
    tipoAtendimento: TipoAtendimento.Atendida,
    status: StatusReserva.Finalizada,
    quantidade: quantidade,
    retiranteNome: retiranteNome,
    retiranteCPF: retiranteCPF,
  );

  factory UpdateReserva.cancelada(Reserva reserva) => UpdateReserva(
    id: reserva.id,
    usuarioId: reserva.usuario.id,
    medicamentoId: reserva.medicamento.id,
    data: reserva.data,
    imagemReceita: reserva.imagemReceita,
    tipoAtendimento: TipoAtendimento.Cancelada,
    status: StatusReserva.Finalizada,
    quantidade: null,
    retiranteNome: null,
    retiranteCPF: null,
  );

  Map<String, dynamic> toJson() => _$UpdateReservaToJson(this);
}
