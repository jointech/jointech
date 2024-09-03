import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoServicioRecord extends FirestoreRecord {
  TipoServicioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tipo" field.
  List<String>? _tipo;
  List<String> get tipo => _tipo ?? const [];
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _tipo = getDataList(snapshotData['tipo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipoServicio');

  static Stream<TipoServicioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoServicioRecord.fromSnapshot(s));

  static Future<TipoServicioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoServicioRecord.fromSnapshot(s));

  static TipoServicioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoServicioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoServicioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoServicioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoServicioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoServicioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoServicioRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class TipoServicioRecordDocumentEquality
    implements Equality<TipoServicioRecord> {
  const TipoServicioRecordDocumentEquality();

  @override
  bool equals(TipoServicioRecord? e1, TipoServicioRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.tipo, e2?.tipo);
  }

  @override
  int hash(TipoServicioRecord? e) => const ListEquality().hash([e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is TipoServicioRecord;
}
