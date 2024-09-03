import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagenesRecord extends FirestoreRecord {
  ImagenesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "ot" field.
  String? _ot;
  String get ot => _ot ?? '';
  bool hasOt() => _ot != null;

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _image = getDataList(snapshotData['image']);
    _ot = snapshotData['ot'] as String?;
    _cliente = snapshotData['cliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imagenes');

  static Stream<ImagenesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagenesRecord.fromSnapshot(s));

  static Future<ImagenesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagenesRecord.fromSnapshot(s));

  static ImagenesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImagenesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagenesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagenesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagenesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagenesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagenesRecordData({
  String? descripcion,
  String? ot,
  String? cliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'ot': ot,
      'cliente': cliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagenesRecordDocumentEquality implements Equality<ImagenesRecord> {
  const ImagenesRecordDocumentEquality();

  @override
  bool equals(ImagenesRecord? e1, ImagenesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.descripcion == e2?.descripcion &&
        listEquality.equals(e1?.image, e2?.image) &&
        e1?.ot == e2?.ot &&
        e1?.cliente == e2?.cliente;
  }

  @override
  int hash(ImagenesRecord? e) =>
      const ListEquality().hash([e?.descripcion, e?.image, e?.ot, e?.cliente]);

  @override
  bool isValidKey(Object? o) => o is ImagenesRecord;
}
