import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsignacionRecord extends FirestoreRecord {
  AsignacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  // "ot" field.
  String? _ot;
  String get ot => _ot ?? '';
  bool hasOt() => _ot != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "tecnico" field.
  DocumentReference? _tecnico;
  DocumentReference? get tecnico => _tecnico;
  bool hasTecnico() => _tecnico != null;

  void _initializeFields() {
    _cliente = snapshotData['cliente'] as String?;
    _ot = snapshotData['ot'] as String?;
    _estado = snapshotData['estado'] as String?;
    _tecnico = snapshotData['tecnico'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('asignacion');

  static Stream<AsignacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsignacionRecord.fromSnapshot(s));

  static Future<AsignacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsignacionRecord.fromSnapshot(s));

  static AsignacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsignacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsignacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsignacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsignacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsignacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsignacionRecordData({
  String? cliente,
  String? ot,
  String? estado,
  DocumentReference? tecnico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cliente': cliente,
      'ot': ot,
      'estado': estado,
      'tecnico': tecnico,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsignacionRecordDocumentEquality implements Equality<AsignacionRecord> {
  const AsignacionRecordDocumentEquality();

  @override
  bool equals(AsignacionRecord? e1, AsignacionRecord? e2) {
    return e1?.cliente == e2?.cliente &&
        e1?.ot == e2?.ot &&
        e1?.estado == e2?.estado &&
        e1?.tecnico == e2?.tecnico;
  }

  @override
  int hash(AsignacionRecord? e) =>
      const ListEquality().hash([e?.cliente, e?.ot, e?.estado, e?.tecnico]);

  @override
  bool isValidKey(Object? o) => o is AsignacionRecord;
}
