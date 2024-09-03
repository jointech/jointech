import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteRecord extends FirestoreRecord {
  ClienteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  // "latitud" field.
  double? _latitud;
  double get latitud => _latitud ?? 0.0;
  bool hasLatitud() => _latitud != null;

  // "longitud" field.
  double? _longitud;
  double get longitud => _longitud ?? 0.0;
  bool hasLongitud() => _longitud != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "tipo_Servicio" field.
  List<String>? _tipoServicio;
  List<String> get tipoServicio => _tipoServicio ?? const [];
  bool hasTipoServicio() => _tipoServicio != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _ciudad = snapshotData['ciudad'] as String?;
    _latitud = castToType<double>(snapshotData['latitud']);
    _longitud = castToType<double>(snapshotData['longitud']);
    _logo = snapshotData['logo'] as String?;
    _tipoServicio = getDataList(snapshotData['tipo_Servicio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteRecord.fromSnapshot(s));

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteRecord.fromSnapshot(s));

  static ClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteRecordData({
  String? nombre,
  String? direccion,
  String? ciudad,
  double? latitud,
  double? longitud,
  String? logo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'direccion': direccion,
      'ciudad': ciudad,
      'latitud': latitud,
      'longitud': longitud,
      'logo': logo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteRecordDocumentEquality implements Equality<ClienteRecord> {
  const ClienteRecordDocumentEquality();

  @override
  bool equals(ClienteRecord? e1, ClienteRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.direccion == e2?.direccion &&
        e1?.ciudad == e2?.ciudad &&
        e1?.latitud == e2?.latitud &&
        e1?.longitud == e2?.longitud &&
        e1?.logo == e2?.logo &&
        listEquality.equals(e1?.tipoServicio, e2?.tipoServicio);
  }

  @override
  int hash(ClienteRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.direccion,
        e?.ciudad,
        e?.latitud,
        e?.longitud,
        e?.logo,
        e?.tipoServicio
      ]);

  @override
  bool isValidKey(Object? o) => o is ClienteRecord;
}
