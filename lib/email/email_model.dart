import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'email_widget.dart' show EmailWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EmailModel extends FlutterFlowModel<EmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  final correoMask = MaskTextInputFormatter(mask: 'correocliente@empresa.cl');
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  // State field(s) for asunto widget.
  FocusNode? asuntoFocusNode;
  TextEditingController? asuntoTextController;
  String? Function(BuildContext, String?)? asuntoTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (emailCorreoTecnico)] action in Button widget.
  ApiCallResponse? apiCorreo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    correoFocusNode?.dispose();
    correoTextController?.dispose();

    asuntoFocusNode?.dispose();
    asuntoTextController?.dispose();
  }
}
