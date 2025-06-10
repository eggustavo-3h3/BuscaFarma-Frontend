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
                                              child: SizedBox(
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
                                                'Nome Usuario:',
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
                                              alignment:
                                                  AlignmentDirectional(
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
                                                      labelStyle: GoogleFonts.inter().copyWith(
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
                                                      hintStyle: GoogleFonts.inter().copyWith(
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
                                                          letterSpacing:
                                                              0.0,
                                                        ),
                                                                                    
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).primaryText,
                                                    validator: _model
                                                        .txtQuantidadeTextControllerValidator
                                                        .asValidator(
                                                          context,
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
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
                                                      BorderRadius.circular(
                                                        10,
                                                      ),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8),
                                                  child: Container(
                                                    width: 400,
                                                    height: 128.8,
                                                    decoration: BoxDecoration(
                                                      color: Color(
                                                        0x00AACCCB,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                      shape:
                                                          BoxShape.rectangle,
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
                                                        Container(
                                                          width: 85,
                                                          height: 100,
                                                          decoration: BoxDecoration(
                                                            color: Color(
                                                              0xFFE9E9E9,
                                                            ),
                                                            image: DecorationImage(
                                                              fit:
                                                                  BoxFit
                                                                      .cover,
                                                              image:
                                                                  Image.asset(
                                                                    'assets/images/haha.png',
                                                                  ).image,
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
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
                                                                  'Amoxicilina Tri-Hidratada 500mg + \nClavulanato de Potássio 125mg \nSandoz Genérico',
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
                                                                  '30 Comprimidos',
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
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://picsum.photos/seed/607/600',
                                          width: 600,
                                          height: 800,
                                          fit: BoxFit.cover,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Atendida',
                          options: FFButtonOptions(
                            height: 61.1,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              16,
                              0,
                              16,
                              0,
                            ),
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
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
