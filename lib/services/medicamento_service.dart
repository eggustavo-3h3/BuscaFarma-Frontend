import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/backend/request/novo_medicamento.dart';
import 'package:buscafarma/backend/response/message.dart';
import 'package:buscafarma/backend/util/api_util.dart';
import 'package:flutter/foundation.dart';

class MedicamentoService extends ChangeNotifier {
  List<Medicamento> _medicamentos = [];

  Future<List<Medicamento>> carregar() async {
    return await makeCall(() async {
      final medicamentos = await API.instance.listaMedicamentos();
      _medicamentos = medicamentos;
      notifyListeners();

      return _medicamentos;
    });
  }

  Future<Message> adicionar(NovoMedicamento novoMedicamento) async {
    return await makeCall(() async {
      return await API.instance.adicionarMedicamento(novoMedicamento);
    });
  }

  List<Medicamento> get medicamentos => _medicamentos;
}
