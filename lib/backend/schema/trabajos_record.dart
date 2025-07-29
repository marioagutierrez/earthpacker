import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrabajosRecord extends FirestoreRecord {
  TrabajosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trabajos');

  static Stream<TrabajosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrabajosRecord.fromSnapshot(s));

  static Future<TrabajosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrabajosRecord.fromSnapshot(s));

  static TrabajosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrabajosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrabajosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrabajosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrabajosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrabajosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrabajosRecordData({
  String? titulo,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrabajosRecordDocumentEquality implements Equality<TrabajosRecord> {
  const TrabajosRecordDocumentEquality();

  @override
  bool equals(TrabajosRecord? e1, TrabajosRecord? e2) {
    return e1?.titulo == e2?.titulo && e1?.image == e2?.image;
  }

  @override
  int hash(TrabajosRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.image]);

  @override
  bool isValidKey(Object? o) => o is TrabajosRecord;
}
