import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'rendiciones_widget.dart' show RendicionesWidget;
import 'package:flutter/material.dart';

class RendicionesModel extends FlutterFlowModel<RendicionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaTextController;
  String? Function(BuildContext, String?)? txtFechaTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for ot widget.
  FocusNode? otFocusNode;
  TextEditingController? otTextController;
  String? Function(BuildContext, String?)? otTextControllerValidator;
  String? _otTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for observacion widget.
  FocusNode? observacionFocusNode;
  TextEditingController? observacionTextController;
  String? Function(BuildContext, String?)? observacionTextControllerValidator;
  // State field(s) for detalle1 widget.
  FocusNode? detalle1FocusNode;
  TextEditingController? detalle1TextController;
  String? Function(BuildContext, String?)? detalle1TextControllerValidator;
  // State field(s) for valor1 widget.
  FocusNode? valor1FocusNode;
  TextEditingController? valor1TextController;
  String? Function(BuildContext, String?)? valor1TextControllerValidator;
  // State field(s) for detalle2 widget.
  FocusNode? detalle2FocusNode;
  TextEditingController? detalle2TextController;
  String? Function(BuildContext, String?)? detalle2TextControllerValidator;
  // State field(s) for valor2 widget.
  FocusNode? valor2FocusNode;
  TextEditingController? valor2TextController;
  String? Function(BuildContext, String?)? valor2TextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    otTextControllerValidator = _otTextControllerValidator;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaTextController?.dispose();

    otFocusNode?.dispose();
    otTextController?.dispose();

    observacionFocusNode?.dispose();
    observacionTextController?.dispose();

    detalle1FocusNode?.dispose();
    detalle1TextController?.dispose();

    valor1FocusNode?.dispose();
    valor1TextController?.dispose();

    detalle2FocusNode?.dispose();
    detalle2TextController?.dispose();

    valor2FocusNode?.dispose();
    valor2TextController?.dispose();
  }
}
