import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'ingreso_servicio_copy_copy_widget.dart'
    show IngresoServicioCopyCopyWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class IngresoServicioCopyCopyModel
    extends FlutterFlowModel<IngresoServicioCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkInternet] action in ingresoServicioCopyCopy widget.
  bool? estaConectado;
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
  // State field(s) for Cliente widget.
  FocusNode? clienteFocusNode;
  TextEditingController? clienteTextController;
  String? Function(BuildContext, String?)? clienteTextControllerValidator;
  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
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
  // State field(s) for km_salida widget.
  FocusNode? kmSalidaFocusNode;
  TextEditingController? kmSalidaTextController;
  String? Function(BuildContext, String?)? kmSalidaTextControllerValidator;
  // State field(s) for horaInicio widget.
  FocusNode? horaInicioFocusNode;
  TextEditingController? horaInicioTextController;
  final horaInicioMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? horaInicioTextControllerValidator;
  // State field(s) for horaLlegadaFaena widget.
  FocusNode? horaLlegadaFaenaFocusNode;
  TextEditingController? horaLlegadaFaenaTextController;
  final horaLlegadaFaenaMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)?
      horaLlegadaFaenaTextControllerValidator;
  DateTime? datePicked3;
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
  // State field(s) for horaFin widget.
  FocusNode? horaFinFocusNode;
  TextEditingController? horaFinTextController;
  final horaFinMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? horaFinTextControllerValidator;
  // State field(s) for diagnostico widget.
  FocusNode? diagnosticoFocusNode;
  TextEditingController? diagnosticoTextController;
  String? Function(BuildContext, String?)? diagnosticoTextControllerValidator;
  // State field(s) for nombreCliente widget.
  FocusNode? nombreClienteFocusNode;
  TextEditingController? nombreClienteTextController;
  String? Function(BuildContext, String?)? nombreClienteTextControllerValidator;
  // State field(s) for tipo widget.
  String? tipoValue;
  FormFieldController<String>? tipoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    fechaFocusNode1?.dispose();
    fechaTextController1?.dispose();

    tecnicoFocusNode?.dispose();
    tecnicoTextController?.dispose();

    otFocusNode?.dispose();
    otTextController?.dispose();

    clienteFocusNode?.dispose();
    clienteTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    correoFocusNode?.dispose();
    correoTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

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

    kmSalidaFocusNode?.dispose();
    kmSalidaTextController?.dispose();

    horaInicioFocusNode?.dispose();
    horaInicioTextController?.dispose();

    horaLlegadaFaenaFocusNode?.dispose();
    horaLlegadaFaenaTextController?.dispose();

    trabajoInicioFocusNode?.dispose();
    trabajoInicioTextController?.dispose();

    trabajoFinFocusNode?.dispose();
    trabajoFinTextController?.dispose();

    horaFinFocusNode?.dispose();
    horaFinTextController?.dispose();

    diagnosticoFocusNode?.dispose();
    diagnosticoTextController?.dispose();

    nombreClienteFocusNode?.dispose();
    nombreClienteTextController?.dispose();
  }
}
