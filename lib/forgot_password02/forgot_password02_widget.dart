import '/auth/firebase_auth/auth_util.dart';
import '/components/nav_bar_floting_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'forgot_password02_model.dart';
export 'forgot_password02_model.dart';

class ForgotPassword02Widget extends StatefulWidget {
  const ForgotPassword02Widget({super.key});

  @override
  State<ForgotPassword02Widget> createState() => _ForgotPassword02WidgetState();
}

class _ForgotPassword02WidgetState extends State<ForgotPassword02Widget> {
  late ForgotPassword02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPassword02Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ForgotPassword02'});
    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF15161E),
            size: 30.0,
          ),
          onPressed: () async {
            logFirebaseEvent('FORGOT_PASSWORD02_arrow_back_rounded_ICN');

            context.pushNamed('login');
          },
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Align(
        alignment: const AlignmentDirectional(0.0, -1.0),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // This row exists for when the "app bar" is hidden on desktop, having a way back for the user can work well.
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('FORGOT_PASSWORD02_Row_ne4hzfcy_ON_TAP');
                      context.safePop();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Color(0xFF15161E),
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: const Color(0xFF15161E),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Olvide mi contraseña',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: const Color(0xFF15161E),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
                child: Text(
                  'Se le enviará al correo que indique el link para el cambio de contraseña..',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: const Color(0xFF606A85),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.emailAddressTextController,
                    focusNode: _model.emailAddressFocusNode,
                    autofillHints: const [AutofillHints.email],
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Tu correo...',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: const Color(0xFF606A85),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: 'Ingresa tu email...',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: const Color(0xFF606A85),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFE5E7EB),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFFF5963),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFFF5963),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 20.0, 24.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: const Color(0xFF15161E),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    maxLines: null,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: const Color(0xFF6F61EF),
                    validator: _model.emailAddressTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('FORGOT_PASSWORD02_Button-Login_ON_TAP');
                      if (_model.emailAddressTextController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Email required!',
                            ),
                          ),
                        );
                        return;
                      }
                      await authManager.resetPassword(
                        email: _model.emailAddressTextController.text,
                        context: context,
                      );
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('CORREO'),
                            content: const Text('Correo enviado'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );

                      context.pushNamed('login');
                    },
                    text: 'Enviar  Link',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF6F61EF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Colors.white,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarFlotingModel,
                    updateCallback: () => setState(() {}),
                    child: const NavBarFlotingWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}