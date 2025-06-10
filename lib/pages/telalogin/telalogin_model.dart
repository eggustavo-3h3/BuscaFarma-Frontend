import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/pages/telaatendimento/telaatendimento_widget.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:buscafarma/services/login_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'telalogin_widget.dart' show TelaloginWidget;
import 'package:flutter/material.dart';

class TelaloginModel extends FlutterFlowModel<TelaloginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  Future<void> login(BuildContext context) async {
    try {
      final loginService = GetIt.I<LoginService>();

      await loginService.autentica(
        Credencial(login: textController1.text, senha: textController2.text),
      );

      if (GetIt.I<AuthService>().isLogado) {
        if (context.mounted) {
          context.pushNamed(TelaatendimentoWidget.routeName);
        }
      }
    } on ErrorHandler catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.message}")),
        );
      }
    }
  }
}
