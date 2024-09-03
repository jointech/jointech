import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MensajeRecord extends FirestoreRecord {
  MensajeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sujeto" field.
  String? _sujeto;
  String get sujeto => _sujeto ?? '';
  bool hasSujeto() => _sujeto != null;

  // "asunto" field.
  String? _asunto;
  String get asunto => _asunto ?? '';
  bool hasAsunto() => _asunto != null;

  // "cuerpo" field.
  String? _cuerpo;
  String get cuerpo => _cuerpo ?? '';
  bool hasCuerpo() => _cuerpo != null;

  void _initializeFields() {
    _sujeto = snapshotData['sujeto'] as String?;
    _asunto = snapshotData['asunto'] as String?;
    _cuerpo = snapshotData['cuerpo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mensaje');

  static Stream<MensajeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MensajeRecord.fromSnapshot(s));

  static Future<MensajeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MensajeRecord.fromSnapshot(s));

  static MensajeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MensajeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MensajeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MensajeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MensajeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MensajeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMensajeRecordData({
  String? sujeto,
  String? asunto,
  String? cuerpo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sujeto': sujeto,
      'asunto': asunto,
      'cuerpo': cuerpo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MensajeRecordDocumentEquality implements Equality<MensajeRecord> {
  const MensajeRecordDocumentEquality();

  @override
  bool equals(MensajeRecord? e1, MensajeRecord? e2) {
    return e1?.sujeto == e2?.sujeto &&
        e1?.asunto == e2?.asunto &&
        e1?.cuerpo == e2?.cuerpo;
  }

  @override
  int hash(MensajeRecord? e) =>
      const ListEquality().hash([e?.sujeto, e?.asunto, e?.cuerpo]);

  @override
  bool isValidKey(Object? o) => o is MensajeRecord;
}
