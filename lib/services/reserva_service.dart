import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/backend/model/status_reserva.dart';
import 'package:buscafarma/backend/request/nova_reserva.dart';
import 'package:buscafarma/backend/request/update_reserva.dart';
import 'package:buscafarma/backend/response/message.dart';
import 'package:buscafarma/backend/util/api_util.dart';
import 'package:buscafarma/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ReservaService extends ChangeNotifier {
  List<Reserva> _reservas = [];

  Future<void> carregar(String cpf) async {
    final usuario = await GetIt.I<LoginService>().getUserInfo(cpf);

    await makeCall(() async {
      final reservas = await API.instance.listaReservasPorUsuario(usuario.id);
      _reservas = reservas;
      notifyListeners();
    });
  }

  Future<Message> adicionar(NovaReserva novaReserva) async {
    return await makeCall(() async {
      return await API.instance.criaReserva(novaReserva);
    });
  }

  Future<Message> makeIndisponivel(Reserva reserva) async {
    return await makeCall(() async {
      final result = await API.instance.updateReserva(
        reserva.id,
        UpdateReserva.indisponivel(reserva),
      );

      _reservas.removeWhere((r) => r.id == reserva.id);
      _reservas.add(reserva.withStatus(StatusReserva.Indisponivel));

      notifyListeners();

      return result;
    });
  }

  Future<Message> makeFaltaEstoque(Reserva reserva) async {
    return await makeCall(() async {
      final result = await API.instance.updateReserva(
        reserva.id,
        UpdateReserva.faltaEstoque(reserva),
      );

      _reservas.removeWhere((r) => r.id == reserva.id);
      _reservas.add(reserva.withStatus(StatusReserva.FaltaEstoque));

      notifyListeners();

      return result;
    });
  }

  Future<Message> makeCancelada(Reserva reserva) async {
    return await makeCall(() async {
      final result = await API.instance.updateReserva(
        reserva.id,
        UpdateReserva.cancelada(reserva),
      );

      _reservas.removeWhere((r) => r.id == reserva.id);
      _reservas.add(reserva.withStatus(StatusReserva.Finalizada));

      notifyListeners();

      return result;
    });
  }

  Future<Message> makeAtendida(
    Reserva reserva,
    int quantidade,
    String retiranteNome,
    String retiranteCPF,
  ) async {
    return await makeCall(() async {
      final result = await API.instance.updateReserva(
        reserva.id,
        UpdateReserva.atendida(
          reserva,
          quantidade,
          retiranteNome,
          retiranteCPF,
        ),
      );

      _reservas.removeWhere((r) => r.id == reserva.id);
      _reservas.add(reserva.withStatus(StatusReserva.Finalizada));

      notifyListeners();

      return result;
    });
  }

  List<Reserva> get reservas => _reservas;
  List<Reserva> get pendentes =>
      _reservas.where((r) => r.status == StatusReserva.Pendente).toList();
}
