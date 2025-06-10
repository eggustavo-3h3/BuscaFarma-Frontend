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
  String? ddCategoriaValue;
  FormFieldController<String>? ddCategoriaValueController;
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
}
