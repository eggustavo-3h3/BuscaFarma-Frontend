import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/backend/model/status_reserva.dart';
import 'package:buscafarma/backend/model/tipo_atendimento.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_reserva.g.dart';

@JsonSerializable()
class UpdateReserva {
  @JsonKey(name: "enumTipoAtendimento")
  final TipoAtendimento tipoAtendimento;

  final StatusReserva status;

  final String? retiranteNome;
  final String? retiranteCPF;

  UpdateReserva({
    required this.tipoAtendimento,
    required this.status,
    required this.retiranteNome,
    required this.retiranteCPF,
  });

  factory UpdateReserva.fromJson(Map<String, dynamic> json) =>
      _$UpdateReservaFromJson(json);

  factory UpdateReserva.indisponivel(Reserva reserva) => UpdateReserva(
    tipoAtendimento: TipoAtendimento.NaoAtendida,
    status: StatusReserva.Indisponivel,
    retiranteNome: null,
    retiranteCPF: null,
  );

  factory UpdateReserva.faltaEstoque(Reserva reserva) => UpdateReserva(
    tipoAtendimento: TipoAtendimento.NaoAtendida,
    status: StatusReserva.FaltaEstoque,
    retiranteNome: null,
    retiranteCPF: null,
  );

  factory UpdateReserva.atendida(
    Reserva reserva,
    String retiranteNome,
    String retiranteCPF,
  ) => UpdateReserva(
    tipoAtendimento: TipoAtendimento.Atendida,
    status: StatusReserva.Finalizada,
    retiranteNome: retiranteNome,
    retiranteCPF: retiranteCPF,
  );

  factory UpdateReserva.cancelada(Reserva reserva) => UpdateReserva(
    tipoAtendimento: TipoAtendimento.Cancelada,
    status: StatusReserva.Finalizada,
    retiranteNome: null,
    retiranteCPF: null,
  );

  Map<String, dynamic> toJson() => _$UpdateReservaToJson(this);
}
