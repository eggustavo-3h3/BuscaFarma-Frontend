import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/services/reserva_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'telaatendimento_widget.dart' show TelaatendimentoWidget;
import 'package:flutter/material.dart';

class TelaatendimentoModel extends FlutterFlowModel<TelaatendimentoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCPFUsuario widget.
  FocusNode? txtCPFUsuarioFocusNode;
  TextEditingController? txtCPFUsuarioTextController;
  String? Function(BuildContext, String?)? txtCPFUsuarioTextControllerValidator;

  FocusNode? txtCPFRetiranteFocusNode;
  TextEditingController? txtCPFRetiranteTextController;
  String? Function(BuildContext, String?)?
  txtCPFRetiranteTextControllerValidator;

  // State field(s) for txtNomeUsuario widget.
  FocusNode? txtNomeUsuarioFocusNode;
  TextEditingController? txtNomeUsuarioTextController;
  String? Function(BuildContext, String?)?
  txtNomeUsuarioTextControllerValidator;
  // State field(s) for txtQuantidade widget.
  FocusNode? txtQuantidadeFocusNode;
  TextEditingController? txtQuantidadeTextController;
  String? Function(BuildContext, String?)? txtQuantidadeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCPFUsuarioFocusNode?.dispose();
    txtCPFUsuarioTextController?.dispose();

    txtCPFRetiranteFocusNode?.dispose();
    txtCPFRetiranteTextController?.dispose();

    txtNomeUsuarioFocusNode?.dispose();
    txtNomeUsuarioTextController?.dispose();

    txtQuantidadeFocusNode?.dispose();
    txtQuantidadeTextController?.dispose();
  }

  Future<void> pesquisaReservas() async {
    final text = txtCPFUsuarioTextController?.text;

    if (text != null) {
      if (text.isEmpty) {
        return;
      }

      await GetIt.I<ReservaService>().carregar(text);
    }
  }

  Future<void> makeIndisponivel(BuildContext context, Reserva reserva) async {
    try {
      final service = GetIt.I<ReservaService>();
      final result = await service.makeIndisponivel(reserva);

      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(result.mensagem)));
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.toString()}")),
        );
      }
    }
  }

  Future<void> makeFaltaEstoque(BuildContext context, Reserva reserva) async {
    try {
      final service = GetIt.I<ReservaService>();
      final result = await service.makeFaltaEstoque(reserva);

      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(result.mensagem)));
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.toString()}")),
        );
      }
    }
  }

  Future<void> makeAtendida(BuildContext context, Reserva reserva) async {
    try {
      final quantidade = int.parse(txtQuantidadeTextController.text);
      final retiranteNome = txtNomeUsuarioTextController.text;
      final retiranteCPF = txtCPFRetiranteTextController.text;

      if (retiranteNome.isEmpty || retiranteCPF.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Os dados do retirante precisam ser informados")),
        );
        return;
      }

      if (quantidade <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Uma quantidade válida precisa ser informada")),
        );
        return;
      }

      final service = GetIt.I<ReservaService>();
      final result = await service.makeAtendida(reserva, quantidade, retiranteNome, retiranteCPF);

      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(result.mensagem)));
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.toString()}")),
        );
      }
    }
  }

  bool isImage(Uint8List bytes) {
    if (bytes.length < 4) return false;

    // PNG
    if (bytes[0] == 0x89 &&
        bytes[1] == 0x50 &&
        bytes[2] == 0x4E &&
        bytes[3] == 0x47) {
      return true;
    }

    // JPG
    if (bytes[0] == 0xFF && bytes[1] == 0xD8) {
      return true;
    }

    // GIF
    if (bytes[0] == 0x47 && bytes[1] == 0x49 && bytes[2] == 0x46) {
      return true;
    }

    return false;
  }
}
