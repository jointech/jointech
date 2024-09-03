import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdenesTrabajoRecord extends FirestoreRecord {
  OrdenesTrabajoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "patente" field.
  String? _patente;
  String get patente => _patente ?? '';
  bool hasPatente() => _patente != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "kilometraje" field.
  int? _kilometraje;
  int get kilometraje => _kilometraje ?? 0;
  bool hasKilometraje() => _kilometraje != null;

  // "vin" field.
  String? _vin;
  String get vin => _vin ?? '';
  bool hasVin() => _vin != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "kilometrajeSalida" field.
  int? _kilometrajeSalida;
  int get kilometrajeSalida => _kilometrajeSalida ?? 0;
  bool hasKilometrajeSalida() => _kilometrajeSalida != null;

  // "fechaTecnico" field.
  DateTime? _fechaTecnico;
  DateTime? get fechaTecnico => _fechaTecnico;
  bool hasFechaTecnico() => _fechaTecnico != null;

  // "diagnostico" field.
  String? _diagnostico;
  String get diagnostico => _diagnostico ?? '';
  bool hasDiagnostico() => _diagnostico != null;

  // "nombreClienteFaena" field.
  String? _nombreClienteFaena;
  String get nombreClienteFaena => _nombreClienteFaena ?? '';
  bool hasNombreClienteFaena() => _nombreClienteFaena != null;

  // "nombreTecnicoFaena" field.
  String? _nombreTecnicoFaena;
  String get nombreTecnicoFaena => _nombreTecnicoFaena ?? '';
  bool hasNombreTecnicoFaena() => _nombreTecnicoFaena != null;

  // "nombreTecnico" field.
  String? _nombreTecnico;
  String get nombreTecnico => _nombreTecnico ?? '';
  bool hasNombreTecnico() => _nombreTecnico != null;

  // "nombreCliente" field.
  String? _nombreCliente;
  String get nombreCliente => _nombreCliente ?? '';
  bool hasNombreCliente() => _nombreCliente != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  // "faena" field.
  String? _faena;
  String get faena => _faena ?? '';
  bool hasFaena() => _faena != null;

  // "horallegadaFaena" field.
  String? _horallegadaFaena;
  String get horallegadaFaena => _horallegadaFaena ?? '';
  bool hasHorallegadaFaena() => _horallegadaFaena != null;

  // "horaInicioTecnico" field.
  String? _horaInicioTecnico;
  String get horaInicioTecnico => _horaInicioTecnico ?? '';
  bool hasHoraInicioTecnico() => _horaInicioTecnico != null;

  // "horaFinTecnico" field.
  String? _horaFinTecnico;
  String get horaFinTecnico => _horaFinTecnico ?? '';
  bool hasHoraFinTecnico() => _horaFinTecnico != null;

  // "trabajoInicio" field.
  String? _trabajoInicio;
  String get trabajoInicio => _trabajoInicio ?? '';
  bool hasTrabajoInicio() => _trabajoInicio != null;

  // "trabajoFin" field.
  String? _trabajoFin;
  String get trabajoFin => _trabajoFin ?? '';
  bool hasTrabajoFin() => _trabajoFin != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "ordenTrabajo" field.
  String? _ordenTrabajo;
  String get ordenTrabajo => _ordenTrabajo ?? '';
  bool hasOrdenTrabajo() => _ordenTrabajo != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "hormometro" field.
  int? _hormometro;
  int get hormometro => _hormometro ?? 0;
  bool hasHormometro() => _hormometro != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _patente = snapshotData['patente'] as String?;
    _marca = snapshotData['marca'] as String?;
    _modelo = snapshotData['modelo'] as String?;
    _kilometraje = castToType<int>(snapshotData['kilometraje']);
    _vin = snapshotData['vin'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _kilometrajeSalida = castToType<int>(snapshotData['kilometrajeSalida']);
    _fechaTecnico = snapshotData['fechaTecnico'] as DateTime?;
    _diagnostico = snapshotData['diagnostico'] as String?;
    _nombreClienteFaena = snapshotData['nombreClienteFaena'] as String?;
    _nombreTecnicoFaena = snapshotData['nombreTecnicoFaena'] as String?;
    _nombreTecnico = snapshotData['nombreTecnico'] as String?;
    _nombreCliente = snapshotData['nombreCliente'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _ciudad = snapshotData['ciudad'] as String?;
    _faena = snapshotData['faena'] as String?;
    _horallegadaFaena = snapshotData['horallegadaFaena'] as String?;
    _horaInicioTecnico = snapshotData['horaInicioTecnico'] as String?;
    _horaFinTecnico = snapshotData['horaFinTecnico'] as String?;
    _trabajoInicio = snapshotData['trabajoInicio'] as String?;
    _trabajoFin = snapshotData['trabajoFin'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _ordenTrabajo = snapshotData['ordenTrabajo'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _hormometro = castToType<int>(snapshotData['hormometro']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('OrdenesTrabajo')
          : FirebaseFirestore.instance.collectionGroup('OrdenesTrabajo');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('OrdenesTrabajo').doc(id);

  static Stream<OrdenesTrabajoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdenesTrabajoRecord.fromSnapshot(s));

  static Future<OrdenesTrabajoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdenesTrabajoRecord.fromSnapshot(s));

  static OrdenesTrabajoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrdenesTrabajoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdenesTrabajoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdenesTrabajoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdenesTrabajoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdenesTrabajoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdenesTrabajoRecordData({
  String? patente,
  String? marca,
  String? modelo,
  int? kilometraje,
  String? vin,
  String? descripcion,
  int? kilometrajeSalida,
  DateTime? fechaTecnico,
  String? diagnostico,
  String? nombreClienteFaena,
  String? nombreTecnicoFaena,
  String? nombreTecnico,
  String? nombreCliente,
  String? direccion,
  String? ciudad,
  String? faena,
  String? horallegadaFaena,
  String? horaInicioTecnico,
  String? horaFinTecnico,
  String? trabajoInicio,
  String? trabajoFin,
  DateTime? fecha,
  String? ordenTrabajo,
  String? imagen,
  int? hormometro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'patente': patente,
      'marca': marca,
      'modelo': modelo,
      'kilometraje': kilometraje,
      'vin': vin,
      'descripcion': descripcion,
      'kilometrajeSalida': kilometrajeSalida,
      'fechaTecnico': fechaTecnico,
      'diagnostico': diagnostico,
      'nombreClienteFaena': nombreClienteFaena,
      'nombreTecnicoFaena': nombreTecnicoFaena,
      'nombreTecnico': nombreTecnico,
      'nombreCliente': nombreCliente,
      'direccion': direccion,
      'ciudad': ciudad,
      'faena': faena,
      'horallegadaFaena': horallegadaFaena,
      'horaInicioTecnico': horaInicioTecnico,
      'horaFinTecnico': horaFinTecnico,
      'trabajoInicio': trabajoInicio,
      'trabajoFin': trabajoFin,
      'fecha': fecha,
      'ordenTrabajo': ordenTrabajo,
      'imagen': imagen,
      'hormometro': hormometro,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdenesTrabajoRecordDocumentEquality
    implements Equality<OrdenesTrabajoRecord> {
  const OrdenesTrabajoRecordDocumentEquality();

  @override
  bool equals(OrdenesTrabajoRecord? e1, OrdenesTrabajoRecord? e2) {
    return e1?.patente == e2?.patente &&
        e1?.marca == e2?.marca &&
        e1?.modelo == e2?.modelo &&
        e1?.kilometraje == e2?.kilometraje &&
        e1?.vin == e2?.vin &&
        e1?.descripcion == e2?.descripcion &&
        e1?.kilometrajeSalida == e2?.kilometrajeSalida &&
        e1?.fechaTecnico == e2?.fechaTecnico &&
        e1?.diagnostico == e2?.diagnostico &&
        e1?.nombreClienteFaena == e2?.nombreClienteFaena &&
        e1?.nombreTecnicoFaena == e2?.nombreTecnicoFaena &&
        e1?.nombreTecnico == e2?.nombreTecnico &&
        e1?.nombreCliente == e2?.nombreCliente &&
        e1?.direccion == e2?.direccion &&
        e1?.ciudad == e2?.ciudad &&
        e1?.faena == e2?.faena &&
        e1?.horallegadaFaena == e2?.horallegadaFaena &&
        e1?.horaInicioTecnico == e2?.horaInicioTecnico &&
        e1?.horaFinTecnico == e2?.horaFinTecnico &&
        e1?.trabajoInicio == e2?.trabajoInicio &&
        e1?.trabajoFin == e2?.trabajoFin &&
        e1?.fecha == e2?.fecha &&
        e1?.ordenTrabajo == e2?.ordenTrabajo &&
        e1?.imagen == e2?.imagen &&
        e1?.hormometro == e2?.hormometro;
  }

  @override
  int hash(OrdenesTrabajoRecord? e) => const ListEquality().hash([
        e?.patente,
        e?.marca,
        e?.modelo,
        e?.kilometraje,
        e?.vin,
        e?.descripcion,
        e?.kilometrajeSalida,
        e?.fechaTecnico,
        e?.diagnostico,
        e?.nombreClienteFaena,
        e?.nombreTecnicoFaena,
        e?.nombreTecnico,
        e?.nombreCliente,
        e?.direccion,
        e?.ciudad,
        e?.faena,
        e?.horallegadaFaena,
        e?.horaInicioTecnico,
        e?.horaFinTecnico,
        e?.trabajoInicio,
        e?.trabajoFin,
        e?.fecha,
        e?.ordenTrabajo,
        e?.imagen,
        e?.hormometro
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdenesTrabajoRecord;
}
