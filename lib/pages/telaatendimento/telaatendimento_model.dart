import '/flutter_flow/flutter_flow_util.dart';
import 'telaatendimento_widget.dart' show TelaatendimentoWidget;
import 'package:flutter/material.dart';

class TelaatendimentoModel extends FlutterFlowModel<TelaatendimentoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCPFUsuario widget.
  FocusNode? txtCPFUsuarioFocusNode;
  TextEditingController? txtCPFUsuarioTextController;
  String? Function(BuildContext, String?)? txtCPFUsuarioTextControllerValidator;
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

    txtNomeUsuarioFocusNode?.dispose();
    txtNomeUsuarioTextController?.dispose();

    txtQuantidadeFocusNode?.dispose();
    txtQuantidadeTextController?.dispose();
  }
}
