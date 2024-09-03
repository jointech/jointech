import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RendicionesRecord extends FirestoreRecord {
  RendicionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "ot" field.
  String? _ot;
  String get ot => _ot ?? '';
  bool hasOt() => _ot != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "detalle1" field.
  String? _detalle1;
  String get detalle1 => _detalle1 ?? '';
  bool hasDetalle1() => _detalle1 != null;

  // "valor1" field.
  int? _valor1;
  int get valor1 => _valor1 ?? 0;
  bool hasValor1() => _valor1 != null;

  // "detalle2" field.
  String? _detalle2;
  String get detalle2 => _detalle2 ?? '';
  bool hasDetalle2() => _detalle2 != null;

  // "valor2" field.
  int? _valor2;
  int get valor2 => _valor2 ?? 0;
  bool hasValor2() => _valor2 != null;

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _ot = snapshotData['ot'] as String?;
    _observaciones = snapshotData['observaciones'] as String?;
    _detalle1 = snapshotData['detalle1'] as String?;
    _valor1 = castToType<int>(snapshotData['valor1']);
    _detalle2 = snapshotData['detalle2'] as String?;
    _valor2 = castToType<int>(snapshotData['valor2']);
    _cliente = snapshotData['cliente'] as String?;
    _fecha = snapshotData['fecha'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Rendiciones')
          : FirebaseFirestore.instance.collectionGroup('Rendiciones');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Rendiciones').doc(id);

  static Stream<RendicionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RendicionesRecord.fromSnapshot(s));

  static Future<RendicionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RendicionesRecord.fromSnapshot(s));

  static RendicionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RendicionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RendicionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RendicionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RendicionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RendicionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRendicionesRecordData({
  String? nombre,
  String? ot,
  String? observaciones,
  String? detalle1,
  int? valor1,
  String? detalle2,
  int? valor2,
  String? cliente,
  String? fecha,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'ot': ot,
      'observaciones': observaciones,
      'detalle1': detalle1,
      'valor1': valor1,
      'detalle2': detalle2,
      'valor2': valor2,
      'cliente': cliente,
      'fecha': fecha,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class RendicionesRecordDocumentEquality implements Equality<RendicionesRecord> {
  const RendicionesRecordDocumentEquality();

  @override
  bool equals(RendicionesRecord? e1, RendicionesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.ot == e2?.ot &&
        e1?.observaciones == e2?.observaciones &&
        e1?.detalle1 == e2?.detalle1 &&
        e1?.valor1 == e2?.valor1 &&
        e1?.detalle2 == e2?.detalle2 &&
        e1?.valor2 == e2?.valor2 &&
        e1?.cliente == e2?.cliente &&
        e1?.fecha == e2?.fecha &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(RendicionesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.ot,
        e?.observaciones,
        e?.detalle1,
        e?.valor1,
        e?.detalle2,
        e?.valor2,
        e?.cliente,
        e?.fecha,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is RendicionesRecord;
}
