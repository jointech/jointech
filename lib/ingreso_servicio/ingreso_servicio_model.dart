import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ingreso_servicio_widget.dart' show IngresoServicioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class IngresoServicioModel extends FlutterFlowModel<IngresoServicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fecha widget.
  FocusNode? fechaFocusNode1;
  TextEditingController? fechaTextController1;
  final fechaMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? fechaTextController1Validator;
  DateTime? datePicked1;
  // State field(s) for Tecnico widget.
  FocusNode? tecnicoFocusNode;
  TextEditingController? tecnicoTextController;
  String? Function(BuildContext, String?)? tecnicoTextControllerValidator;
  // State field(s) for OT widget.
  FocusNode? otFocusNode;
  TextEditingController? otTextController;
  String? Function(BuildContext, String?)? otTextControllerValidator;
  // State field(s) for dropCliente widget.
  String? dropClienteValue;
  FormFieldController<String>? dropClienteValueController;
  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for ciudad widget.
  FocusNode? ciudadFocusNode;
  TextEditingController? ciudadTextController;
  String? Function(BuildContext, String?)? ciudadTextControllerValidator;
  // State field(s) for faena widget.
  FocusNode? faenaFocusNode;
  TextEditingController? faenaTextController;
  String? Function(BuildContext, String?)? faenaTextControllerValidator;
  // State field(s) for Patente widget.
  FocusNode? patenteFocusNode;
  TextEditingController? patenteTextController;
  String? Function(BuildContext, String?)? patenteTextControllerValidator;
  // State field(s) for marca widget.
  FocusNode? marcaFocusNode;
  TextEditingController? marcaTextController;
  String? Function(BuildContext, String?)? marcaTextControllerValidator;
  // State field(s) for modelo widget.
  FocusNode? modeloFocusNode;
  TextEditingController? modeloTextController;
  String? Function(BuildContext, String?)? modeloTextControllerValidator;
  // State field(s) for km widget.
  FocusNode? kmFocusNode;
  TextEditingController? kmTextController;
  String? Function(BuildContext, String?)? kmTextControllerValidator;
  // State field(s) for horometro widget.
  FocusNode? horometroFocusNode;
  TextEditingController? horometroTextController;
  String? Function(BuildContext, String?)? horometroTextControllerValidator;
  // State field(s) for vin widget.
  FocusNode? vinFocusNode;
  TextEditingController? vinTextController;
  String? Function(BuildContext, String?)? vinTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for fecha widget.
  FocusNode? fechaFocusNode2;
  TextEditingController? fechaTextController2;
  final fechaMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? fechaTextController2Validator;
  DateTime? datePicked2;
  // State field(s) for horaLlegadaFaena widget.
  FocusNode? horaLlegadaFaenaFocusNode;
  TextEditingController? horaLlegadaFaenaTextController;
  final horaLlegadaFaenaMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)?
      horaLlegadaFaenaTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for km_salida widget.
  FocusNode? kmSalidaFocusNode;
  TextEditingController? kmSalidaTextController;
  String? Function(BuildContext, String?)? kmSalidaTextControllerValidator;
  // State field(s) for horaInicio widget.
  FocusNode? horaInicioFocusNode;
  TextEditingController? horaInicioTextController;
  final horaInicioMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? horaInicioTextControllerValidator;
  // State field(s) for horaFin widget.
  FocusNode? horaFinFocusNode;
  TextEditingController? horaFinTextController;
  final horaFinMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? horaFinTextControllerValidator;
  // State field(s) for trabajoInicio widget.
  FocusNode? trabajoInicioFocusNode;
  TextEditingController? trabajoInicioTextController;
  final trabajoInicioMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? trabajoInicioTextControllerValidator;
  // State field(s) for trabajoFin widget.
  FocusNode? trabajoFinFocusNode;
  TextEditingController? trabajoFinTextController;
  final trabajoFinMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? trabajoFinTextControllerValidator;
  // State field(s) for diagnostico widget.
  FocusNode? diagnosticoFocusNode;
  TextEditingController? diagnosticoTextController;
  String? Function(BuildContext, String?)? diagnosticoTextControllerValidator;
  // State field(s) for nombreCliente widget.
  FocusNode? nombreClienteFocusNode;
  TextEditingController? nombreClienteTextController;
  String? Function(BuildContext, String?)? nombreClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fechaFocusNode1?.dispose();
    fechaTextController1?.dispose();

    tecnicoFocusNode?.dispose();
    tecnicoTextController?.dispose();

    otFocusNode?.dispose();
    otTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    ciudadFocusNode?.dispose();
    ciudadTextController?.dispose();

    faenaFocusNode?.dispose();
    faenaTextController?.dispose();

    patenteFocusNode?.dispose();
    patenteTextController?.dispose();

    marcaFocusNode?.dispose();
    marcaTextController?.dispose();

    modeloFocusNode?.dispose();
    modeloTextController?.dispose();

    kmFocusNode?.dispose();
    kmTextController?.dispose();

    horometroFocusNode?.dispose();
    horometroTextController?.dispose();

    vinFocusNode?.dispose();
    vinTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    fechaFocusNode2?.dispose();
    fechaTextController2?.dispose();

    horaLlegadaFaenaFocusNode?.dispose();
    horaLlegadaFaenaTextController?.dispose();

    kmSalidaFocusNode?.dispose();
    kmSalidaTextController?.dispose();

    horaInicioFocusNode?.dispose();
    horaInicioTextController?.dispose();

    horaFinFocusNode?.dispose();
    horaFinTextController?.dispose();

    trabajoInicioFocusNode?.dispose();
    trabajoInicioTextController?.dispose();

    trabajoFinFocusNode?.dispose();
    trabajoFinTextController?.dispose();

    diagnosticoFocusNode?.dispose();
    diagnosticoTextController?.dispose();

    nombreClienteFocusNode?.dispose();
    nombreClienteTextController?.dispose();
  }
}
