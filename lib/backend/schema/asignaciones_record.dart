import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsignacionesRecord extends FirestoreRecord {
  AsignacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "numeroOT" field.
  String? _numeroOT;
  String get numeroOT => _numeroOT ?? '';
  bool hasNumeroOT() => _numeroOT != null;

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "prioridad" field.
  String? _prioridad;
  String get prioridad => _prioridad ?? '';
  bool hasPrioridad() => _prioridad != null;

  // "tecnico" field.
  String? _tecnico;
  String get tecnico => _tecnico ?? '';
  bool hasTecnico() => _tecnico != null;

  // "vin" field.
  String? _vin;
  String get vin => _vin ?? '';
  bool hasVin() => _vin != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _numeroOT = snapshotData['numeroOT'] as String?;
    _cliente = snapshotData['cliente'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _prioridad = snapshotData['prioridad'] as String?;
    _tecnico = snapshotData['tecnico'] as String?;
    _vin = snapshotData['vin'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('asignaciones')
          : FirebaseFirestore.instance.collectionGroup('asignaciones');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('asignaciones').doc(id);

  static Stream<AsignacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsignacionesRecord.fromSnapshot(s));

  static Future<AsignacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsignacionesRecord.fromSnapshot(s));

  static AsignacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsignacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsignacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsignacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsignacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsignacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsignacionesRecordData({
  String? numeroOT,
  String? cliente,
  String? descripcion,
  String? prioridad,
  String? tecnico,
  String? vin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numeroOT': numeroOT,
      'cliente': cliente,
      'descripcion': descripcion,
      'prioridad': prioridad,
      'tecnico': tecnico,
      'vin': vin,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsignacionesRecordDocumentEquality
    implements Equality<AsignacionesRecord> {
  const AsignacionesRecordDocumentEquality();

  @override
  bool equals(AsignacionesRecord? e1, AsignacionesRecord? e2) {
    return e1?.numeroOT == e2?.numeroOT &&
        e1?.cliente == e2?.cliente &&
        e1?.descripcion == e2?.descripcion &&
        e1?.prioridad == e2?.prioridad &&
        e1?.tecnico == e2?.tecnico &&
        e1?.vin == e2?.vin;
  }

  @override
  int hash(AsignacionesRecord? e) => const ListEquality().hash([
        e?.numeroOT,
        e?.cliente,
        e?.descripcion,
        e?.prioridad,
        e?.tecnico,
        e?.vin
      ]);

  @override
  bool isValidKey(Object? o) => o is AsignacionesRecord;
}
