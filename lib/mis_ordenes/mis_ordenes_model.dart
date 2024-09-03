import '/components/nav_bar_floting_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mis_ordenes_widget.dart' show MisOrdenesWidget;
import 'package:flutter/material.dart';

class MisOrdenesModel extends FlutterFlowModel<MisOrdenesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  @override
  void initState(BuildContext context) {
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    navBarFlotingModel.dispose();
  }
}
