import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarioRecord extends FirestoreRecord {
  CalendarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreTarea" field.
  String? _nombreTarea;
  String get nombreTarea => _nombreTarea ?? '';
  bool hasNombreTarea() => _nombreTarea != null;

  // "descripcionTarea" field.
  String? _descripcionTarea;
  String get descripcionTarea => _descripcionTarea ?? '';
  bool hasDescripcionTarea() => _descripcionTarea != null;

  // "fechaTarea" field.
  DateTime? _fechaTarea;
  DateTime? get fechaTarea => _fechaTarea;
  bool hasFechaTarea() => _fechaTarea != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombreTarea = snapshotData['nombreTarea'] as String?;
    _descripcionTarea = snapshotData['descripcionTarea'] as String?;
    _fechaTarea = snapshotData['fechaTarea'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('calendario')
          : FirebaseFirestore.instance.collectionGroup('calendario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('calendario').doc(id);

  static Stream<CalendarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalendarioRecord.fromSnapshot(s));

  static Future<CalendarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalendarioRecord.fromSnapshot(s));

  static CalendarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalendarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalendarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalendarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalendarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalendarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalendarioRecordData({
  String? nombreTarea,
  String? descripcionTarea,
  DateTime? fechaTarea,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreTarea': nombreTarea,
      'descripcionTarea': descripcionTarea,
      'fechaTarea': fechaTarea,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalendarioRecordDocumentEquality implements Equality<CalendarioRecord> {
  const CalendarioRecordDocumentEquality();

  @override
  bool equals(CalendarioRecord? e1, CalendarioRecord? e2) {
    return e1?.nombreTarea == e2?.nombreTarea &&
        e1?.descripcionTarea == e2?.descripcionTarea &&
        e1?.fechaTarea == e2?.fechaTarea;
  }

  @override
  int hash(CalendarioRecord? e) => const ListEquality()
      .hash([e?.nombreTarea, e?.descripcionTarea, e?.fechaTarea]);

  @override
  bool isValidKey(Object? o) => o is CalendarioRecord;
}
