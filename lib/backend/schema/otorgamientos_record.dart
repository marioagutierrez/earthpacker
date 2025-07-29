import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OtorgamientosRecord extends FirestoreRecord {
  OtorgamientosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('otorgamientos');

  static Stream<OtorgamientosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OtorgamientosRecord.fromSnapshot(s));

  static Future<OtorgamientosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OtorgamientosRecord.fromSnapshot(s));

  static OtorgamientosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OtorgamientosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OtorgamientosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OtorgamientosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OtorgamientosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OtorgamientosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOtorgamientosRecordData({
  String? titulo,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class OtorgamientosRecordDocumentEquality
    implements Equality<OtorgamientosRecord> {
  const OtorgamientosRecordDocumentEquality();

  @override
  bool equals(OtorgamientosRecord? e1, OtorgamientosRecord? e2) {
    return e1?.titulo == e2?.titulo && e1?.imagen == e2?.imagen;
  }

  @override
  int hash(OtorgamientosRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is OtorgamientosRecord;
}
