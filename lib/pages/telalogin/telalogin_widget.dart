import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'telalogin_model.dart';
export 'telalogin_model.dart';

class TelaloginWidget extends StatefulWidget {
  const TelaloginWidget({super.key});

  static String routeName = 'Telalogin';
  static String routePath = '/telalogin';

  @override
  State<TelaloginWidget> createState() => _TelaloginWidgetState();
}

class _TelaloginWidgetState extends State<TelaloginWidget> {
  late TelaloginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaloginModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
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
                    height: 173.82,
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
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Container(
                      width: 732.61,
                      height: 486,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: AlignmentDirectional(0, 0),
                          image:
                              Image.asset(
                                'assets/images/cadastroimage.jpg',
                              ).image,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 850.4,
                    height: 486.38,
                    decoration: BoxDecoration(color: Color(0xFFAACCCB)),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // context.pushNamed(TelaatendimentoWidget.routeName);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'LOGIN',
                            style: GoogleFonts.inter().copyWith(
                              fontWeight: FontWeight.w800,
                              fontStyle: fft.bodyMedium.fontStyle,
                              fontSize: 26,
                              letterSpacing: 0.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            width: 506.31,
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: TextFormField(
                                controller: _model.textController1,
                                focusNode: _model.textFieldFocusNode1,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'USUÁRIO:',
                                  labelStyle: GoogleFonts.inter().copyWith(
                                    fontWeight: fft.labelMedium.fontWeight,
                                    fontStyle: fft.labelMedium.fontStyle,
                                    letterSpacing: 0.0,
                                  ),

                                  hintStyle: GoogleFonts.inter().copyWith(
                                    fontWeight: fft.labelMedium.fontWeight,
                                    fontStyle: fft.labelMedium.fontStyle,
                                    letterSpacing: 0.0,
                                    color: Color(0xFFBDBCBC),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFE9E9E9),
                                ),
                                style: GoogleFonts.inter().copyWith(
                                  fontWeight: fft.bodyMedium.fontWeight,
                                  fontStyle: fft.bodyMedium.fontStyle,
                                  letterSpacing: 0.0,
                                ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 511.23,
                            child: TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              obscureText: !_model.senhaVisibility,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'SENHA:',
                                labelStyle: GoogleFonts.inter().copyWith(
                                  fontWeight: fft.labelMedium.fontWeight,
                                  fontStyle: fft.labelMedium.fontStyle,
                                  letterSpacing: 0.0,
                                ),
                                hintStyle: GoogleFonts.inter().copyWith(
                                  fontWeight: fft.labelMedium.fontWeight,
                                  fontStyle: fft.labelMedium.fontStyle,
                                  letterSpacing: 0.0,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Color(0xFFE9E9E9),
                                suffixIcon: InkWell(
                                  onTap:
                                      () => safeSetState(
                                        () =>
                                            _model.senhaVisibility =
                                                !_model.senhaVisibility,
                                      ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.senhaVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).secondaryText,
                                    size: 24,
                                  ),
                                ),
                              ),
                              style: GoogleFonts.inter().copyWith(
                                fontWeight: fft.bodyMedium.fontWeight,
                                fontStyle: fft.bodyMedium.fontStyle,
                                letterSpacing: 0.0,
                              ),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async => await _model.login(context),
                            text: 'Entrar',
                            options: FFButtonOptions(
                              width: 200,
                              height: 44,
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
                              color: Color(0xFF397F7E),
                              textStyle: GoogleFonts.interTight().copyWith(
                                fontWeight: fft.labelMedium.fontWeight,
                                fontStyle: fft.labelMedium.fontStyle,
                                letterSpacing: 0.0,
                                color: Colors.white,
                              ),
                              elevation: 0,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
