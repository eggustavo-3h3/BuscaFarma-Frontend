import 'dart:convert';

import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/services/reserva_service.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../telacadastro/telacadastro_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'telaatendimento_model.dart';
export 'telaatendimento_model.dart';

class TelaatendimentoWidget extends StatefulWidget {
  const TelaatendimentoWidget({super.key});

  static String routeName = 'Telaatendimento';
  static String routePath = '/telaatendimento';

  @override
  State<TelaatendimentoWidget> createState() => _TelaatendimentoWidgetState();
}

class _TelaatendimentoWidgetState extends State<TelaatendimentoWidget> {
  late TelaatendimentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final _reservaService = GetIt.I<ReservaService>();
  Reserva? _reserva;
  var _index = 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaatendimentoModel());

    _model.txtCPFUsuarioTextController ??= TextEditingController();
    _model.txtCPFUsuarioFocusNode ??= FocusNode();

    _model.txtNomeUsuarioTextController ??= TextEditingController();
    _model.txtNomeUsuarioFocusNode ??= FocusNode();

    _model.txtQuantidadeTextController ??= TextEditingController();
    _model.txtQuantidadeFocusNode ??= FocusNode();

    _model.txtCPFRetiranteFocusNode ??= FocusNode();
    _model.txtCPFRetiranteTextController ??= TextEditingController();

    _reservaService.addListener(onCPFPesquisado);
  }

  void onCPFPesquisado() {
    setState(() {
      if (_reservaService.pendentes.isNotEmpty) {
        _index = 0;
        _reserva = _reservaService.pendentes[_index];
        _model.txtQuantidadeTextController.text = _reserva?.quantidade?.toString() ?? '1';
        loadImage(_reserva!);
      }
    });
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          context.pushNamed(TelacadastroWidget.routeName);
                        },
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
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            color: Color(0xFF424242),
                            letterSpacing: 0.0,
                          ),

                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {},
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
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
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
                            child: SingleChildScrollView(
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
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                              'CPF Usuario:',
                                              style: GoogleFonts.inter()
                                                  .copyWith(
                                                    fontWeight:
                                                        fft
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        fft
                                                            .bodyMedium
                                                            .fontStyle,
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
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 200,
                                                    child: TextFormField(
                                                      controller:
                                                          _model
                                                              .txtCPFUsuarioTextController,
                                                      focusNode:
                                                          _model
                                                              .txtCPFUsuarioFocusNode,
                                                      autofocus: false,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        isDense: true,
                                                        labelStyle: GoogleFonts.inter()
                                                            .copyWith(
                                                              fontWeight:
                                                                  fft
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  fft
                                                                      .labelMedium
                                                                      .fontStyle,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                        hintStyle: GoogleFonts.inter()
                                                            .copyWith(
                                                              fontWeight:
                                                                  fft
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  fft
                                                                      .labelMedium
                                                                      .fontStyle,
                                                              letterSpacing:
                                                                  0.0,
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
                                                            fontWeight:
                                                                fft
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                fft
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                            letterSpacing: 0.0,
                                                          ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).primaryText,
                                                      validator: _model
                                                          .txtCPFUsuarioTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed:
                                                        () async =>
                                                            await _model
                                                                .pesquisaReservas(),
                                                    icon: Icon(Icons.search),
                                                    iconSize: 24,
                                                  ),
                                                ],
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
                                              'CPF Retirante:',
                                              style: GoogleFonts.inter()
                                                  .copyWith(
                                                    fontWeight:
                                                        fft
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        fft
                                                            .bodyMedium
                                                            .fontStyle,
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
                                                          .txtCPFRetiranteTextController,
                                                  focusNode:
                                                      _model
                                                          .txtCPFRetiranteFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
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
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).primaryText,
                                                  validator: _model
                                                      .txtCPFUsuarioTextControllerValidator
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
                                                'Nome Retirante:',
                                                style: GoogleFonts.inter()
                                                    .copyWith(
                                                      fontWeight:
                                                          fft
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          fft
                                                              .bodyMedium
                                                              .fontStyle,
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
                                                0,
                                              ),
                                              child: SizedBox(
                                                width: 200,
                                                child: TextFormField(
                                                  controller:
                                                      _model
                                                          .txtNomeUsuarioTextController,
                                                  focusNode:
                                                      _model
                                                          .txtNomeUsuarioFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: GoogleFonts.inter()
                                                        .copyWith(
                                                          fontWeight:
                                                              fft
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              fft
                                                                  .labelMedium
                                                                  .fontStyle,
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
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).primaryText,
                                                  validator: _model
                                                      .txtNomeUsuarioTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 288.1,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAACCCB),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(4),
                                              child: Text(
                                                'Quantidade\n Retirada: ',
                                                style: GoogleFonts.inter()
                                                    .copyWith(
                                                      fontWeight:
                                                          fft
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          fft
                                                              .bodyMedium
                                                              .fontStyle,
                                                      fontSize: 20,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                -1,
                                                0,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8),
                                                child: SizedBox(
                                                  width: 95,
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
                                                      labelStyle: GoogleFonts.inter()
                                                          .copyWith(
                                                            fontWeight:
                                                                fft
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                fft
                                                                    .labelMedium
                                                                    .fontStyle,
                                                            letterSpacing: 0.0,
                                                          ),
                                                      hintStyle: GoogleFonts.inter()
                                                          .copyWith(
                                                            fontWeight:
                                                                fft
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                fft
                                                                    .labelMedium
                                                                    .fontStyle,
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
                                                          fontWeight:
                                                              fft
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              fft
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          letterSpacing: 0.0,
                                                        ),

                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).primaryText,
                                                    validator: _model
                                                        .txtQuantidadeTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 800.44,
                                        height: 290,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAACCCB),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                -1,
                                                0,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10),
                                                child: Text(
                                                  'Medicamento reservado:',
                                                  style: GoogleFonts.inter()
                                                      .copyWith(
                                                        fontWeight:
                                                            fft
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            fft
                                                                .bodyMedium
                                                                .fontStyle,
                                                        letterSpacing: 0.0,
                                                        fontSize: 20,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Container(
                                                width: 400,
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE9E9E9),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8),
                                                  child: Container(
                                                    width: 400,
                                                    height: 128.8,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00AACCCB),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      shape: BoxShape.rectangle,
                                                      border: Border.all(
                                                        color: Color(
                                                          0xFF557779,
                                                        ),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        _reserva == null
                                                            ? Text("")
                                                            : Container(
                                                              width: 85,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                    color: Color(
                                                                      0xFFE9E9E9,
                                                                    ),
                                                                  ),
                                                              child: Image.asset(
                                                                'assets/images/remedio.png',
                                                                fit:
                                                                    BoxFit
                                                                        .cover,
                                                                width: 85,
                                                                height: 100,
                                                              ),
                                                            ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                    0,
                                                                    -1,
                                                                  ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.all(
                                                                      2,
                                                                    ),
                                                                child: Text(
                                                                  _reserva
                                                                          ?.medicamento
                                                                          .nomeQuimico ??
                                                                      'Não informado',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: GoogleFonts.interTight().copyWith(
                                                                    fontWeight:
                                                                        fft
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                    fontStyle:
                                                                        fft
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                    fontSize:
                                                                        11,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                    0,
                                                                    1,
                                                                  ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.all(
                                                                      10,
                                                                    ),
                                                                child: Text(
                                                                  _reserva
                                                                          ?.medicamento
                                                                          .quantidade ??
                                                                      'Não informado',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: GoogleFonts.inter().copyWith(
                                                                    fontWeight:
                                                                        fft
                                                                            .bodySmall
                                                                            .fontWeight,
                                                                    fontStyle:
                                                                        fft
                                                                            .bodySmall
                                                                            .fontStyle,
                                                                    fontSize:
                                                                        10,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          'Ver foto receita:',
                                          style: GoogleFonts.inter().copyWith(
                                            fontWeight:
                                                fft.bodyMedium.fontWeight,
                                            fontStyle: fft.bodyMedium.fontStyle,
                                            fontSize: 20,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child:
                                            _error != null
                                                ? Text(
                                                  _error!,
                                                  style: const TextStyle(
                                                    color: Colors.red,
                                                  ),
                                                )
                                                : _imageBytes != null
                                                ? Image.memory(_imageBytes!)
                                                : const CircularProgressIndicator(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${_index + 1} / ${_reservaService.pendentes.length}",
                      style: GoogleFonts.inter().copyWith(
                        fontWeight: fft.bodyMedium.fontWeight,
                        fontStyle: fft.bodyMedium.fontStyle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FFButtonWidget(
                        onPressed: () => anterior(context),
                        text: 'Anterior',
                        options: FFButtonOptions(
                          height: 61.1,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            color: Color(0xFF2F2F2F),
                            letterSpacing: 0.0,
                          ),
                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_reserva != null) {
                            await _model.makeAtendida(context, _reserva!);
                          }
                        },
                        text: 'Atendida',
                        options: FFButtonOptions(
                          height: 61.1,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            color: Color(0xFF2F2F2F),
                            letterSpacing: 0.0,
                          ),
                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Não atendida',
                        options: FFButtonOptions(
                          height: 61.1,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            color: Color(0xFF040404),
                            letterSpacing: 0.0,
                          ),

                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FFButtonWidget(
                        onPressed: () async => await indisponivel(context),
                        text: 'Indisponível',
                        options: FFButtonOptions(
                          height: 61.1,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            color: Color(0xFF040404),
                            letterSpacing: 0.0,
                          ),
                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_reserva != null) {
                            await _model.makeFaltaEstoque(context, _reserva!);
                          }
                        },
                        text: 'Falta estoque',
                        options: FFButtonOptions(
                          height: 61.1,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            color: Color(0xFF040404),
                            letterSpacing: 0.0,
                          ),

                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FFButtonWidget(
                        onPressed: () => proxima(context),
                        text: 'Próxima',
                        options: FFButtonOptions(
                          height: 61.1,
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFFAACCCB),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            color: Color(0xFF040404),
                            letterSpacing: 0.0,
                          ),

                          elevation: 0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Uint8List? _imageBytes;
  String? _error;

  void loadImage(Reserva reserva) async {
    final base64Str = reserva.imagemReceita;

    if (base64Str.isEmpty) {
      setState(() => _error = 'A imagem está vazia.');
      return;
    }

    try {
      final bytes = base64Decode(base64Str);

      // Validação simples para garantir que é uma imagem
      if (_model.isImage(bytes)) {
        setState(() {
          _imageBytes = bytes;
          _error = null;
        });
      } else {
        setState(() => _error = 'O conteúdo não é uma imagem válida.');
      }
    } catch (e) {
      setState(() => _error = 'Erro ao decodificar o base64.');
    }
  }

  Future<void> indisponivel(BuildContext context) async {
    if (_reserva != null) {
      await _model.makeIndisponivel(context, _reserva!);

      if (_reservaService.pendentes.isNotEmpty) {
        setState(() {
          _index = 0;
          _reserva = _reservaService.pendentes[_index];
        });
      }
    }
  }

  void proxima(BuildContext context) {
    final newIndex = _index + 1;

    if (_reservaService.pendentes.length > newIndex) {
      setState(() {
        _index = newIndex;
        _reserva = _reservaService.pendentes[_index];
        _model.txtQuantidadeTextController.text = _reserva?.quantidade?.toString() ?? '1';
        loadImage(_reserva!);
      });
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Você já atingiu o fim da lista")));
    }
  }

  void anterior(BuildContext context) {
    final newIndex = _index - 1;

    if (newIndex >= 0 && _reservaService.pendentes.length > newIndex) {
      setState(() {
        _index = newIndex;
        _reserva = _reservaService.pendentes[_index];
        _model.txtQuantidadeTextController.text = _reserva?.quantidade?.toString() ?? '1';
        loadImage(_reserva!);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Você já atingiu o início da lista")),
      );
    }
  }
}
