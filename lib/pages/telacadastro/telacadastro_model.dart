import 'package:buscafarma/backend/model/categoria.dart';
import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/backend/request/novo_medicamento.dart';
import 'package:buscafarma/services/medicamento_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'telacadastro_widget.dart' show TelacadastroWidget;
import 'package:flutter/material.dart';

class TelacadastroModel extends FlutterFlowModel<TelacadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCodigo widget.
  FocusNode? txtCodigoFocusNode;
  TextEditingController? txtCodigoTextController;
  String? Function(BuildContext, String?)? txtCodigoTextControllerValidator;
  // State field(s) for ddTipoMedicamento widget.
  String? ddTipoMedicamentoValue;
  FormFieldController<String>? ddTipoMedicamentoValueController;
  // State field(s) for txtNomeComercial widget.
  FocusNode? txtNomeComercialFocusNode;
  TextEditingController? txtNomeComercialTextController;
  String? Function(BuildContext, String?)?
  txtNomeComercialTextControllerValidator;
  // State field(s) for txtNomeQuimico widget.
  FocusNode? txtNomeQuimicoFocusNode;
  TextEditingController? txtNomeQuimicoTextController;
  String? Function(BuildContext, String?)?
  txtNomeQuimicoTextControllerValidator;
  // State field(s) for ddUnidade widget.
  String? ddUnidadeValue;
  FormFieldController<String>? ddUnidadeValueController;
  // State field(s) for ddCategoria widget.
  Categoria? ddCategoriaValue;
  FormFieldController<Categoria>? ddCategoriaValueController;
  // State field(s) for txtQuantidade widget.
  FocusNode? txtQuantidadeFocusNode;
  TextEditingController? txtQuantidadeTextController;
  String? Function(BuildContext, String?)? txtQuantidadeTextControllerValidator;
  // State field(s) for txtEstoqueAtualizado widget.
  FocusNode? txtEstoqueAtualizadoFocusNode;
  TextEditingController? txtEstoqueAtualizadoTextController;
  String? Function(BuildContext, String?)?
  txtEstoqueAtualizadoTextControllerValidator;
  // State field(s) for txtDescricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCodigoFocusNode?.dispose();
    txtCodigoTextController?.dispose();

    txtNomeComercialFocusNode?.dispose();
    txtNomeComercialTextController?.dispose();

    txtNomeQuimicoFocusNode?.dispose();
    txtNomeQuimicoTextController?.dispose();

    txtQuantidadeFocusNode?.dispose();
    txtQuantidadeTextController?.dispose();

    txtEstoqueAtualizadoFocusNode?.dispose();
    txtEstoqueAtualizadoTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();
  }

  Future<void> salvar(BuildContext context) async {
    final nomeComercial = txtNomeComercialTextController.text;
    final nomeQuimico = txtNomeQuimicoTextController.text;
    final descricao = txtDescricaoTextController.text;
    final quantidade = txtQuantidadeTextController.text;

    final messages = <String>[];

    if (nomeComercial.isEmpty) {
      messages.add("O nome comercial é obrigatório");
    }

    if (nomeQuimico.isEmpty) {
      messages.add("O nome químico é obrigatório");
    }

    if (descricao.isEmpty) {
      messages.add("A descrição é obrigatória");
    }

    if (quantidade.isEmpty) {
      messages.add("A quantidade é obrigatória");
    }

    if (ddCategoriaValue == null) {
      messages.add("Você deve selecionar uma categoria");
    }

    if (messages.isNotEmpty) {
      _showMessage(context, messages);
      return;
    }

    try {
      final request = NovoMedicamento(
        nomeComercial: nomeComercial,
        nomeQuimico: nomeQuimico,
        descricao: descricao,
        tipoMedicamento:
            ddTipoMedicamentoValue == "ALTO CUSTO"
                ? TipoMedicamento.AltoCusto
                : TipoMedicamento.Comum,
        quantidade: quantidade,
        categoriaId: ddCategoriaValue!.id,
      );

      final result = await GetIt.I<MedicamentoService>().adicionar(request);

      if (context.mounted) {
        _showMessage(context, [result.mensagem]);
      }
    } on Exception catch (e) {
      if (context.mounted) {
        _showMessage(context, [
          "Ocorreu um erro ao cadastrar medicamento: ${e.toString()}",
        ]);
      }
    }
  }

  void _showMessage(BuildContext context, List<String> messages) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
                messages
                    .map(
                      (m) => Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        child: Text(m),
                      ),
                    )
                    .toList(),
          ),
        ),
      );
    }
  }
}
