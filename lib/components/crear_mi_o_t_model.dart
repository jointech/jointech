import '/flutter_flow/flutter_flow_util.dart';
import 'crear_mi_o_t_widget.dart' show CrearMiOTWidget;
import 'package:flutter/material.dart';

class CrearMiOTModel extends FlutterFlowModel<CrearMiOTWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode1;
  TextEditingController? shortBioTextController1;
  String? Function(BuildContext, String?)? shortBioTextController1Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode2;
  TextEditingController? shortBioTextController2;
  String? Function(BuildContext, String?)? shortBioTextController2Validator;
  // State field(s) for shortBioCliente widget.
  FocusNode? shortBioClienteFocusNode;
  TextEditingController? shortBioClienteTextController;
  String? Function(BuildContext, String?)?
      shortBioClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode1?.dispose();
    shortBioTextController1?.dispose();

    shortBioFocusNode2?.dispose();
    shortBioTextController2?.dispose();

    shortBioClienteFocusNode?.dispose();
    shortBioClienteTextController?.dispose();
  }
}
