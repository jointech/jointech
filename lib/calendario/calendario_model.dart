import '/components/calendar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calendario_widget.dart' show CalendarioWidget;
import 'package:flutter/material.dart';

class CalendarioModel extends FlutterFlowModel<CalendarioWidget> {
  ///  Local state fields for this page.

  DateTime? seletedDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for calendar component.
  late CalendarModel calendarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    calendarModel = createModel(context, () => CalendarModel());
  }

  @override
  void dispose() {
    calendarModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();
  }
}
