import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'imagenes_widget.dart' show ImagenesWidget;
import 'package:flutter/material.dart';

class ImagenesModel extends FlutterFlowModel<ImagenesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for textCliente widget.
  String? textClienteValue;
  FormFieldController<String>? textClienteValueController;
  // State field(s) for textOT widget.
  FocusNode? textOTFocusNode;
  TextEditingController? textOTTextController;
  String? Function(BuildContext, String?)? textOTTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textOTFocusNode?.dispose();
    textOTTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
