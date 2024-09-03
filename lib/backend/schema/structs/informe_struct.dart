// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InformeStruct extends FFFirebaseStruct {
  InformeStruct({
    String? cuidad,
    String? descripcion,
    String? diagnostico,
    String? direccion,
    String? faena,
    DateTime? fecha,
    DateTime? fechaTecnico,
    DateTime? horallegadaTecnico,
    String? imagen,
    int? kilometraje,
    int? kilometrajeSalida,
    String? marca,
    String? modelo,
    String? nombreCliente,
    String? nombreClienteFaena,
    String? nombreTecnico,
    String? nombreTecnicoFaena,
    String? ordenTrabajo,
    String? patente,
    String? vin,
    String? trabajoFin,
    String? trabajoInicio,
    String? horaFinTecnico,
    String? horaInicioTecnico,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cuidad = cuidad,
        _descripcion = descripcion,
        _diagnostico = diagnostico,
        _direccion = direccion,
        _faena = faena,
        _fecha = fecha,
        _fechaTecnico = fechaTecnico,
        _horallegadaTecnico = horallegadaTecnico,
        _imagen = imagen,
        _kilometraje = kilometraje,
        _kilometrajeSalida = kilometrajeSalida,
        _marca = marca,
        _modelo = modelo,
        _nombreCliente = nombreCliente,
        _nombreClienteFaena = nombreClienteFaena,
        _nombreTecnico = nombreTecnico,
        _nombreTecnicoFaena = nombreTecnicoFaena,
        _ordenTrabajo = ordenTrabajo,
        _patente = patente,
        _vin = vin,
        _trabajoFin = trabajoFin,
        _trabajoInicio = trabajoInicio,
        _horaFinTecnico = horaFinTecnico,
        _horaInicioTecnico = horaInicioTecnico,
        super(firestoreUtilData);

  // "cuidad" field.
  String? _cuidad;
  String get cuidad => _cuidad ?? '';
  set cuidad(String? val) => _cuidad = val;

  bool hasCuidad() => _cuidad != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "diagnostico" field.
  String? _diagnostico;
  String get diagnostico => _diagnostico ?? '';
  set diagnostico(String? val) => _diagnostico = val;

  bool hasDiagnostico() => _diagnostico != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "faena" field.
  String? _faena;
  String get faena => _faena ?? '';
  set faena(String? val) => _faena = val;

  bool hasFaena() => _faena != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "fechaTecnico" field.
  DateTime? _fechaTecnico;
  DateTime? get fechaTecnico => _fechaTecnico;
  set fechaTecnico(DateTime? val) => _fechaTecnico = val;

  bool hasFechaTecnico() => _fechaTecnico != null;

  // "horallegadaTecnico" field.
  DateTime? _horallegadaTecnico;
  DateTime? get horallegadaTecnico => _horallegadaTecnico;
  set horallegadaTecnico(DateTime? val) => _horallegadaTecnico = val;

  bool hasHorallegadaTecnico() => _horallegadaTecnico != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;

  bool hasImagen() => _imagen != null;

  // "kilometraje" field.
  int? _kilometraje;
  int get kilometraje => _kilometraje ?? 0;
  set kilometraje(int? val) => _kilometraje = val;

  void incrementKilometraje(int amount) => kilometraje = kilometraje + amount;

  bool hasKilometraje() => _kilometraje != null;

  // "kilometrajeSalida" field.
  int? _kilometrajeSalida;
  int get kilometrajeSalida => _kilometrajeSalida ?? 0;
  set kilometrajeSalida(int? val) => _kilometrajeSalida = val;

  void incrementKilometrajeSalida(int amount) =>
      kilometrajeSalida = kilometrajeSalida + amount;

  bool hasKilometrajeSalida() => _kilometrajeSalida != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  set marca(String? val) => _marca = val;

  bool hasMarca() => _marca != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  set modelo(String? val) => _modelo = val;

  bool hasModelo() => _modelo != null;

  // "nombreCliente" field.
  String? _nombreCliente;
  String get nombreCliente => _nombreCliente ?? '';
  set nombreCliente(String? val) => _nombreCliente = val;

  bool hasNombreCliente() => _nombreCliente != null;

  // "nombreClienteFaena" field.
  String? _nombreClienteFaena;
  String get nombreClienteFaena => _nombreClienteFaena ?? '';
  set nombreClienteFaena(String? val) => _nombreClienteFaena = val;

  bool hasNombreClienteFaena() => _nombreClienteFaena != null;

  // "nombreTecnico" field.
  String? _nombreTecnico;
  String get nombreTecnico => _nombreTecnico ?? '';
  set nombreTecnico(String? val) => _nombreTecnico = val;

  bool hasNombreTecnico() => _nombreTecnico != null;

  // "nombreTecnicoFaena" field.
  String? _nombreTecnicoFaena;
  String get nombreTecnicoFaena => _nombreTecnicoFaena ?? '';
  set nombreTecnicoFaena(String? val) => _nombreTecnicoFaena = val;

  bool hasNombreTecnicoFaena() => _nombreTecnicoFaena != null;

  // "ordenTrabajo" field.
  String? _ordenTrabajo;
  String get ordenTrabajo => _ordenTrabajo ?? '';
  set ordenTrabajo(String? val) => _ordenTrabajo = val;

  bool hasOrdenTrabajo() => _ordenTrabajo != null;

  // "patente" field.
  String? _patente;
  String get patente => _patente ?? '';
  set patente(String? val) => _patente = val;

  bool hasPatente() => _patente != null;

  // "vin" field.
  String? _vin;
  String get vin => _vin ?? '';
  set vin(String? val) => _vin = val;

  bool hasVin() => _vin != null;

  // "trabajoFin" field.
  String? _trabajoFin;
  String get trabajoFin => _trabajoFin ?? '';
  set trabajoFin(String? val) => _trabajoFin = val;

  bool hasTrabajoFin() => _trabajoFin != null;

  // "trabajoInicio" field.
  String? _trabajoInicio;
  String get trabajoInicio => _trabajoInicio ?? '';
  set trabajoInicio(String? val) => _trabajoInicio = val;

  bool hasTrabajoInicio() => _trabajoInicio != null;

  // "horaFinTecnico" field.
  String? _horaFinTecnico;
  String get horaFinTecnico => _horaFinTecnico ?? '';
  set horaFinTecnico(String? val) => _horaFinTecnico = val;

  bool hasHoraFinTecnico() => _horaFinTecnico != null;

  // "HoraInicioTecnico" field.
  String? _horaInicioTecnico;
  String get horaInicioTecnico => _horaInicioTecnico ?? '';
  set horaInicioTecnico(String? val) => _horaInicioTecnico = val;

  bool hasHoraInicioTecnico() => _horaInicioTecnico != null;

  static InformeStruct fromMap(Map<String, dynamic> data) => InformeStruct(
        cuidad: data['cuidad'] as String?,
        descripcion: data['descripcion'] as String?,
        diagnostico: data['diagnostico'] as String?,
        direccion: data['direccion'] as String?,
        faena: data['faena'] as String?,
        fecha: data['fecha'] as DateTime?,
        fechaTecnico: data['fechaTecnico'] as DateTime?,
        horallegadaTecnico: data['horallegadaTecnico'] as DateTime?,
        imagen: data['imagen'] as String?,
        kilometraje: castToType<int>(data['kilometraje']),
        kilometrajeSalida: castToType<int>(data['kilometrajeSalida']),
        marca: data['marca'] as String?,
        modelo: data['modelo'] as String?,
        nombreCliente: data['nombreCliente'] as String?,
        nombreClienteFaena: data['nombreClienteFaena'] as String?,
        nombreTecnico: data['nombreTecnico'] as String?,
        nombreTecnicoFaena: data['nombreTecnicoFaena'] as String?,
        ordenTrabajo: data['ordenTrabajo'] as String?,
        patente: data['patente'] as String?,
        vin: data['vin'] as String?,
        trabajoFin: data['trabajoFin'] as String?,
        trabajoInicio: data['trabajoInicio'] as String?,
        horaFinTecnico: data['horaFinTecnico'] as String?,
        horaInicioTecnico: data['HoraInicioTecnico'] as String?,
      );

  static InformeStruct? maybeFromMap(dynamic data) =>
      data is Map ? InformeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cuidad': _cuidad,
        'descripcion': _descripcion,
        'diagnostico': _diagnostico,
        'direccion': _direccion,
        'faena': _faena,
        'fecha': _fecha,
        'fechaTecnico': _fechaTecnico,
        'horallegadaTecnico': _horallegadaTecnico,
        'imagen': _imagen,
        'kilometraje': _kilometraje,
        'kilometrajeSalida': _kilometrajeSalida,
        'marca': _marca,
        'modelo': _modelo,
        'nombreCliente': _nombreCliente,
        'nombreClienteFaena': _nombreClienteFaena,
        'nombreTecnico': _nombreTecnico,
        'nombreTecnicoFaena': _nombreTecnicoFaena,
        'ordenTrabajo': _ordenTrabajo,
        'patente': _patente,
        'vin': _vin,
        'trabajoFin': _trabajoFin,
        'trabajoInicio': _trabajoInicio,
        'horaFinTecnico': _horaFinTecnico,
        'HoraInicioTecnico': _horaInicioTecnico,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cuidad': serializeParam(
          _cuidad,
          ParamType.String,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'diagnostico': serializeParam(
          _diagnostico,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'faena': serializeParam(
          _faena,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'fechaTecnico': serializeParam(
          _fechaTecnico,
          ParamType.DateTime,
        ),
        'horallegadaTecnico': serializeParam(
          _horallegadaTecnico,
          ParamType.DateTime,
        ),
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
        'kilometraje': serializeParam(
          _kilometraje,
          ParamType.int,
        ),
        'kilometrajeSalida': serializeParam(
          _kilometrajeSalida,
          ParamType.int,
        ),
        'marca': serializeParam(
          _marca,
          ParamType.String,
        ),
        'modelo': serializeParam(
          _modelo,
          ParamType.String,
        ),
        'nombreCliente': serializeParam(
          _nombreCliente,
          ParamType.String,
        ),
        'nombreClienteFaena': serializeParam(
          _nombreClienteFaena,
          ParamType.String,
        ),
        'nombreTecnico': serializeParam(
          _nombreTecnico,
          ParamType.String,
        ),
        'nombreTecnicoFaena': serializeParam(
          _nombreTecnicoFaena,
          ParamType.String,
        ),
        'ordenTrabajo': serializeParam(
          _ordenTrabajo,
          ParamType.String,
        ),
        'patente': serializeParam(
          _patente,
          ParamType.String,
        ),
        'vin': serializeParam(
          _vin,
          ParamType.String,
        ),
        'trabajoFin': serializeParam(
          _trabajoFin,
          ParamType.String,
        ),
        'trabajoInicio': serializeParam(
          _trabajoInicio,
          ParamType.String,
        ),
        'horaFinTecnico': serializeParam(
          _horaFinTecnico,
          ParamType.String,
        ),
        'HoraInicioTecnico': serializeParam(
          _horaInicioTecnico,
          ParamType.String,
        ),
      }.withoutNulls;

  static InformeStruct fromSerializableMap(Map<String, dynamic> data) =>
      InformeStruct(
        cuidad: deserializeParam(
          data['cuidad'],
          ParamType.String,
          false,
        ),
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        diagnostico: deserializeParam(
          data['diagnostico'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        faena: deserializeParam(
          data['faena'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        fechaTecnico: deserializeParam(
          data['fechaTecnico'],
          ParamType.DateTime,
          false,
        ),
        horallegadaTecnico: deserializeParam(
          data['horallegadaTecnico'],
          ParamType.DateTime,
          false,
        ),
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
        kilometraje: deserializeParam(
          data['kilometraje'],
          ParamType.int,
          false,
        ),
        kilometrajeSalida: deserializeParam(
          data['kilometrajeSalida'],
          ParamType.int,
          false,
        ),
        marca: deserializeParam(
          data['marca'],
          ParamType.String,
          false,
        ),
        modelo: deserializeParam(
          data['modelo'],
          ParamType.String,
          false,
        ),
        nombreCliente: deserializeParam(
          data['nombreCliente'],
          ParamType.String,
          false,
        ),
        nombreClienteFaena: deserializeParam(
          data['nombreClienteFaena'],
          ParamType.String,
          false,
        ),
        nombreTecnico: deserializeParam(
          data['nombreTecnico'],
          ParamType.String,
          false,
        ),
        nombreTecnicoFaena: deserializeParam(
          data['nombreTecnicoFaena'],
          ParamType.String,
          false,
        ),
        ordenTrabajo: deserializeParam(
          data['ordenTrabajo'],
          ParamType.String,
          false,
        ),
        patente: deserializeParam(
          data['patente'],
          ParamType.String,
          false,
        ),
        vin: deserializeParam(
          data['vin'],
          ParamType.String,
          false,
        ),
        trabajoFin: deserializeParam(
          data['trabajoFin'],
          ParamType.String,
          false,
        ),
        trabajoInicio: deserializeParam(
          data['trabajoInicio'],
          ParamType.String,
          false,
        ),
        horaFinTecnico: deserializeParam(
          data['horaFinTecnico'],
          ParamType.String,
          false,
        ),
        horaInicioTecnico: deserializeParam(
          data['HoraInicioTecnico'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InformeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InformeStruct &&
        cuidad == other.cuidad &&
        descripcion == other.descripcion &&
        diagnostico == other.diagnostico &&
        direccion == other.direccion &&
        faena == other.faena &&
        fecha == other.fecha &&
        fechaTecnico == other.fechaTecnico &&
        horallegadaTecnico == other.horallegadaTecnico &&
        imagen == other.imagen &&
        kilometraje == other.kilometraje &&
        kilometrajeSalida == other.kilometrajeSalida &&
        marca == other.marca &&
        modelo == other.modelo &&
        nombreCliente == other.nombreCliente &&
        nombreClienteFaena == other.nombreClienteFaena &&
        nombreTecnico == other.nombreTecnico &&
        nombreTecnicoFaena == other.nombreTecnicoFaena &&
        ordenTrabajo == other.ordenTrabajo &&
        patente == other.patente &&
        vin == other.vin &&
        trabajoFin == other.trabajoFin &&
        trabajoInicio == other.trabajoInicio &&
        horaFinTecnico == other.horaFinTecnico &&
        horaInicioTecnico == other.horaInicioTecnico;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cuidad,
        descripcion,
        diagnostico,
        direccion,
        faena,
        fecha,
        fechaTecnico,
        horallegadaTecnico,
        imagen,
        kilometraje,
        kilometrajeSalida,
        marca,
        modelo,
        nombreCliente,
        nombreClienteFaena,
        nombreTecnico,
        nombreTecnicoFaena,
        ordenTrabajo,
        patente,
        vin,
        trabajoFin,
        trabajoInicio,
        horaFinTecnico,
        horaInicioTecnico
      ]);
}

InformeStruct createInformeStruct({
  String? cuidad,
  String? descripcion,
  String? diagnostico,
  String? direccion,
  String? faena,
  DateTime? fecha,
  DateTime? fechaTecnico,
  DateTime? horallegadaTecnico,
  String? imagen,
  int? kilometraje,
  int? kilometrajeSalida,
  String? marca,
  String? modelo,
  String? nombreCliente,
  String? nombreClienteFaena,
  String? nombreTecnico,
  String? nombreTecnicoFaena,
  String? ordenTrabajo,
  String? patente,
  String? vin,
  String? trabajoFin,
  String? trabajoInicio,
  String? horaFinTecnico,
  String? horaInicioTecnico,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InformeStruct(
      cuidad: cuidad,
      descripcion: descripcion,
      diagnostico: diagnostico,
      direccion: direccion,
      faena: faena,
      fecha: fecha,
      fechaTecnico: fechaTecnico,
      horallegadaTecnico: horallegadaTecnico,
      imagen: imagen,
      kilometraje: kilometraje,
      kilometrajeSalida: kilometrajeSalida,
      marca: marca,
      modelo: modelo,
      nombreCliente: nombreCliente,
      nombreClienteFaena: nombreClienteFaena,
      nombreTecnico: nombreTecnico,
      nombreTecnicoFaena: nombreTecnicoFaena,
      ordenTrabajo: ordenTrabajo,
      patente: patente,
      vin: vin,
      trabajoFin: trabajoFin,
      trabajoInicio: trabajoInicio,
      horaFinTecnico: horaFinTecnico,
      horaInicioTecnico: horaInicioTecnico,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InformeStruct? updateInformeStruct(
  InformeStruct? informe, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    informe
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInformeStructData(
  Map<String, dynamic> firestoreData,
  InformeStruct? informe,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (informe == null) {
    return;
  }
  if (informe.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && informe.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final informeData = getInformeFirestoreData(informe, forFieldValue);
  final nestedData = informeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = informe.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInformeFirestoreData(
  InformeStruct? informe, [
  bool forFieldValue = false,
]) {
  if (informe == null) {
    return {};
  }
  final firestoreData = mapToFirestore(informe.toMap());

  // Add any Firestore field values
  informe.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInformeListFirestoreData(
  List<InformeStruct>? informes,
) =>
    informes?.map((e) => getInformeFirestoreData(e, true)).toList() ?? [];
