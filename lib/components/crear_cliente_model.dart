import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_cliente_widget.dart' show CrearClienteWidget;
import 'package:flutter/material.dart';

class CrearClienteModel extends FlutterFlowModel<CrearClienteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode1;
  TextEditingController? shortBioTextController1;
  String? Function(BuildContext, String?)? shortBioTextController1Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode2;
  TextEditingController? shortBioTextController2;
  String? Function(BuildContext, String?)? shortBioTextController2Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode3;
  TextEditingController? shortBioTextController3;
  String? Function(BuildContext, String?)? shortBioTextController3Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode1?.dispose();
    shortBioTextController1?.dispose();

    shortBioFocusNode2?.dispose();
    shortBioTextController2?.dispose();

    shortBioFocusNode3?.dispose();
    shortBioTextController3?.dispose();
  }
}
