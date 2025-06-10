import 'package:buscafarma/backend/model/categoria.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/services/categoria_service.dart';
import 'package:get_it/get_it.dart';

import '../telaatendimento/telaatendimento_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'telacadastro_model.dart';
export 'telacadastro_model.dart';

class TelacadastroWidget extends StatefulWidget {
  const TelacadastroWidget({super.key});

  static String routeName = 'Telacadastro';
  static String routePath = '/telacadastro';

  @override
  State<TelacadastroWidget> createState() => _TelacadastroWidgetState();
}

class _TelacadastroWidgetState extends State<TelacadastroWidget> {
  late TelacadastroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelacadastroModel());

    _model.txtCodigoTextController ??= TextEditingController();
    _model.txtCodigoFocusNode ??= FocusNode();

    _model.txtNomeComercialTextController ??= TextEditingController();
    _model.txtNomeComercialFocusNode ??= FocusNode();

    _model.txtNomeQuimicoTextController ??= TextEditingController();
    _model.txtNomeQuimicoFocusNode ??= FocusNode();

    _model.txtQuantidadeTextController ??= TextEditingController();
    _model.txtQuantidadeFocusNode ??= FocusNode();

    _model.txtEstoqueAtualizadoTextController ??= TextEditingController();
    _model.txtEstoqueAtualizadoFocusNode ??= FocusNode();

    _model.txtDescricaoTextController ??= TextEditingController();
    _model.txtDescricaoFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE9E9E9),
        appBar: AppBar(
          backgroundColor: Color(0xFFAACCCB),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: 150,
                    height: 173.8,
                    decoration: BoxDecoration(
                      color: Color(0xFFAACCCB),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        alignment: AlignmentDirectional(0, 1),
                        image: Image.asset('assets/images/logo.png').image,
                      ),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          toolbarHeight: 140,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () {},
                        text: 'CADASTRO / ALTERAÇÃO DE MEDICAMENTOS',
                        options: FFButtonOptions(
                          width: 400,
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontStyle: fft.titleSmall.fontStyle,
                            fontWeight: fft.titleSmall.fontWeight,
                            color: Color(0xFF424242),
                            letterSpacing: 0.0,
                          ),

                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          context.pushNamed(TelaatendimentoWidget.routeName);
                        },
                        text: 'ATENDIMENTO / RETIRADA MEDICAMENTO',
                        options: FFButtonOptions(
                          width: 400,
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontStyle: fft.titleSmall.fontStyle,
                            fontWeight: fft.titleSmall.fontWeight,
                            color: Color(0xFF383838),
                            letterSpacing: 0.0,
                          ),

                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ].divide(SizedBox(width: 10)),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Container(
                            width: 1300,
                            height: 550,
                            decoration: BoxDecoration(
                              color: Color(0xFFAACCCB),
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                              'Código:',
                                              style: GoogleFonts.inter()
                                                  .copyWith(
                                                    fontStyle:
                                                        fft
                                                            .bodyMedium
                                                            .fontStyle,
                                                    fontWeight:
                                                        fft
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontSize: 20,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                -1,
                                                0,
                                              ),
                                              child: SizedBox(
                                                width: 200,
                                                child: TextFormField(
                                                  controller:
                                                      _model
                                                          .txtCodigoTextController,
                                                  focusNode:
                                                      _model.txtCodigoFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    errorBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).error,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterFlowTheme.of(
                                                                  context,
                                                                ).error,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    filled: true,
                                                    fillColor: Color(
                                                      0xFFE9E9E9,
                                                    ),
                                                  ),
                                                  style: GoogleFonts.inter()
                                                      .copyWith(
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).primaryText,
                                                  validator: _model
                                                      .txtCodigoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    10,
                                                    0,
                                                    15,
                                                    0,
                                                  ),
                                              child: Text(
                                                'Tipo do\n Medicamento:',
                                                style: GoogleFonts.inter()
                                                    .copyWith(
                                                      fontStyle:
                                                          fft
                                                              .bodyMedium
                                                              .fontStyle,
                                                      fontWeight:
                                                          fft
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontSize: 20,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: FlutterFlowDropDown<String>(
                                              controller:
                                                  _model.ddTipoMedicamentoValueController ??=
                                                      FormFieldController<
                                                        String
                                                      >(null),
                                              options: [
                                                'ALTO CUSTO',
                                                'BAIXO CUSTO',
                                              ],
                                              onChanged:
                                                  (val) => safeSetState(
                                                    () =>
                                                        _model.ddTipoMedicamentoValue =
                                                            val,
                                                  ),
                                              width: 200,
                                              height: 40,
                                              textStyle: GoogleFonts.inter()
                                                  .copyWith(
                                                    fontStyle:
                                                        fft
                                                            .bodyMedium
                                                            .fontStyle,
                                                    fontWeight:
                                                        fft
                                                            .bodyMedium
                                                            .fontWeight,
                                                    letterSpacing: 0.0,
                                                  ),
                                              hintText: 'ALTO CUSTO',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color: fft.secondaryText,
                                                size: 24,
                                              ),
                                              fillColor:
                                                  fft.secondaryBackground,
                                              elevation: 2,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    12,
                                                    0,
                                                    12,
                                                    0,
                                                  ),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional(
                                            0,
                                            -1,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(6),
                                            child: Text(
                                              'Nome\nComercial:',
                                              style: GoogleFonts.inter()
                                                  .copyWith(
                                                    fontStyle:
                                                        fft
                                                            .bodyMedium
                                                            .fontStyle,
                                                    fontWeight:
                                                        fft
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontSize: 18,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8),
                                              child: SizedBox(
                                                width: 500,
                                                child: TextFormField(
                                                  controller:
                                                      _model
                                                          .txtNomeComercialTextController,
                                                  focusNode:
                                                      _model
                                                          .txtNomeComercialFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    errorBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).error,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterFlowTheme.of(
                                                                  context,
                                                                ).error,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    filled: true,
                                                    fillColor: Color(
                                                      0xFFE9E9E9,
                                                    ),
                                                  ),
                                                  style: GoogleFonts.inter()
                                                      .copyWith(
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).primaryText,
                                                  validator: _model
                                                      .txtNomeComercialTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(4),
                                          child: Text(
                                            'Nome \nQuímico:',
                                            style: GoogleFonts.inter().copyWith(
                                              fontStyle:
                                                  fft.bodyMedium.fontStyle,
                                              fontWeight:
                                                  fft.bodyMedium.fontWeight,
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8),
                                              child: SizedBox(
                                                width: 500,
                                                child: TextFormField(
                                                  controller:
                                                      _model
                                                          .txtNomeQuimicoTextController,
                                                  focusNode:
                                                      _model
                                                          .txtNomeQuimicoFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    errorBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).error,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterFlowTheme.of(
                                                                  context,
                                                                ).error,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    filled: true,
                                                    fillColor: Color(
                                                      0xFFE9E9E9,
                                                    ),
                                                  ),
                                                  style: GoogleFonts.inter()
                                                      .copyWith(
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).primaryText,
                                                  validator: _model
                                                      .txtNomeQuimicoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            'Unidade:',
                                            style: GoogleFonts.inter().copyWith(
                                              fontStyle:
                                                  fft.bodyMedium.fontStyle,
                                              fontWeight:
                                                  fft.bodyMedium.fontWeight,
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                        FlutterFlowDropDown<String>(
                                          controller:
                                              _model.ddUnidadeValueController ??=
                                                  FormFieldController<String>(
                                                    null,
                                                  ),
                                          options: ['Mg', 'Ml'],
                                          onChanged:
                                              (val) => safeSetState(
                                                () =>
                                                    _model.ddUnidadeValue = val,
                                              ),
                                          width: 84.6,
                                          height: 40,
                                          textStyle: GoogleFonts.inter()
                                              .copyWith(
                                                fontStyle:
                                                    fft.bodyMedium.fontStyle,
                                                fontWeight:
                                                    fft.bodyMedium.fontWeight,
                                                letterSpacing: 0.0,
                                              ),
                                          hintText: 'Mg',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: fft.secondaryText,
                                            size: 24,
                                          ),
                                          fillColor: fft.secondaryBackground,
                                          elevation: 2,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0,
                                          borderRadius: 8,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                12,
                                                0,
                                              ),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(
                                            -1,
                                            0,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Text(
                                              'Categoria do\nmedicamento:',
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.inter()
                                                  .copyWith(
                                                    fontStyle:
                                                        fft
                                                            .bodyMedium
                                                            .fontStyle,
                                                    fontWeight:
                                                        fft
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontSize: 18,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        categoriaDD(),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            'QTDE:',
                                            style: GoogleFonts.inter().copyWith(
                                              fontStyle:
                                                  fft.bodyMedium.fontStyle,
                                              fontWeight:
                                                  fft.bodyMedium.fontWeight,
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: SizedBox(
                                              width: 130,
                                              child: TextFormField(
                                                controller:
                                                    _model
                                                        .txtQuantidadeTextController,
                                                focusNode:
                                                    _model
                                                        .txtQuantidadeFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      GoogleFonts.inter()
                                                          .copyWith(
                                                            fontStyle:
                                                                fft
                                                                    .labelMedium
                                                                    .fontStyle,
                                                            fontWeight:
                                                                fft
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintStyle: GoogleFonts.inter()
                                                      .copyWith(
                                                        fontStyle:
                                                            fft
                                                                .labelMedium
                                                                .fontStyle,
                                                        fontWeight:
                                                            fft
                                                                .labelMedium
                                                                .fontWeight,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              8,
                                                            ),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              8,
                                                            ),
                                                      ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).error,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              FlutterFlowTheme.of(
                                                                context,
                                                              ).error,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              8,
                                                            ),
                                                      ),
                                                  filled: true,
                                                  fillColor: Color(0xFFE9E9E9),
                                                ),
                                                style: GoogleFonts.inter()
                                                    .copyWith(
                                                      fontStyle:
                                                          fft
                                                              .bodyMedium
                                                              .fontStyle,
                                                      fontWeight:
                                                          fft
                                                              .bodyMedium
                                                              .fontWeight,
                                                      letterSpacing: 0.0,
                                                    ),
                                                cursorColor: fft.primaryText,
                                                validator: _model
                                                    .txtQuantidadeTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            'Estoque\nAtualizado:',
                                            style: GoogleFonts.inter().copyWith(
                                              fontStyle:
                                                  fft.bodyMedium.fontStyle,
                                              fontWeight:
                                                  fft.bodyMedium.fontWeight,
                                              fontSize: 20,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              0,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12),
                                              child: SizedBox(
                                                width: 130,
                                                child: TextFormField(
                                                  controller:
                                                      _model
                                                          .txtEstoqueAtualizadoTextController,
                                                  focusNode:
                                                      _model
                                                          .txtEstoqueAtualizadoFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    errorBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).error,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterFlowTheme.of(
                                                                  context,
                                                                ).error,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    filled: true,
                                                    fillColor: Color(
                                                      0xFFE9E9E9,
                                                    ),
                                                  ),
                                                  style: GoogleFonts.inter()
                                                      .copyWith(
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).primaryText,
                                                  validator: _model
                                                      .txtEstoqueAtualizadoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 15)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional(
                                            -1,
                                            0,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(4),
                                            child: Text(
                                              'Descrição do\n medicamento:',
                                              style: GoogleFonts.inter()
                                                  .copyWith(
                                                    fontStyle:
                                                        fft
                                                            .bodyMedium
                                                            .fontStyle,
                                                    fontWeight:
                                                        fft
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontSize: 20,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              -1,
                                              1,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8),
                                              child: SizedBox(
                                                width: 420,
                                                child: TextFormField(
                                                  controller:
                                                      _model
                                                          .txtDescricaoTextController,
                                                  focusNode:
                                                      _model
                                                          .txtDescricaoFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                color: Color(
                                                                  0x00000000,
                                                                ),
                                                                width: 1,
                                                              ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    errorBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).error,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                            color:
                                                                FlutterFlowTheme.of(
                                                                  context,
                                                                ).error,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                    filled: true,
                                                    fillColor: Color(
                                                      0xFFE9E9E9,
                                                    ),
                                                  ),
                                                  style: GoogleFonts.inter()
                                                      .copyWith(
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  maxLines: 8,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).primaryText,
                                                  validator: _model
                                                      .txtDescricaoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async => await _model.salvar(context),
                      text: 'Cadastrar Medicamento',
                      options: FFButtonOptions(
                        height: 61.1,
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFFAACCCB),
                        textStyle: GoogleFonts.interTight().copyWith(
                          fontStyle: fft.titleSmall.fontStyle,
                          fontWeight: fft.titleSmall.fontWeight,
                          color: Color(0xFF2F2F2F),
                          letterSpacing: 0.0,
                        ),

                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget categoriaDD() {
    final fft = FlutterFlowTheme.of(context);
    final service = GetIt.I<CategoriaService>();

    return FutureBuilder(
      future: service.carregar(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              "Erro carregando categorias",
              style: GoogleFonts.inter().copyWith(
                fontWeight: fft.bodySmall.fontWeight,
                fontStyle: fft.bodySmall.fontStyle,
              ),
            ),
          );
        }

        if (snapshot.hasData) {
          final categorias = snapshot.data!;

          return FlutterFlowDropDown<Categoria>(
            controller:
                _model.ddCategoriaValueController ??=
                    FormFieldController<Categoria>(null),
            options: categorias,
            onChanged:
                (val) => safeSetState(() => _model.ddCategoriaValue = val),
            width: 200,
            height: 40,
            textStyle: GoogleFonts.inter().copyWith(
              fontStyle: fft.bodySmall.fontStyle,
              fontWeight: fft.bodySmall.fontWeight,
              letterSpacing: 0.0,
            ),
            hintText: _model.ddCategoriaValue?.descricao ?? "",
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: fft.secondaryText,
              size: 24,
            ),
            fillColor: fft.secondaryBackground,
            elevation: 2,
            borderColor: Colors.transparent,
            borderWidth: 0,
            borderRadius: 8,
            margin: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          );
        }

        return Center(
          child: Column(
            children: [
              CircularProgressIndicator(),
              Text("Carregando categorias..."),
            ],
          ),
        );
      },
    );
  }
}
