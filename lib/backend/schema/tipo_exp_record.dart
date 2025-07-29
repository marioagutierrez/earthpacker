import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoExpRecord extends FirestoreRecord {
  TipoExpRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descrip" field.
  String? _descrip;
  String get descrip => _descrip ?? '';
  bool hasDescrip() => _descrip != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "destacado" field.
  bool? _destacado;
  bool get destacado => _destacado ?? false;
  bool hasDestacado() => _destacado != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descrip = snapshotData['descrip'] as String?;
    _image = snapshotData['image'] as String?;
    _destacado = snapshotData['destacado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipo_exp');

  static Stream<TipoExpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoExpRecord.fromSnapshot(s));

  static Future<TipoExpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoExpRecord.fromSnapshot(s));

  static TipoExpRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoExpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoExpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoExpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoExpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoExpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoExpRecordData({
  String? titulo,
  String? descrip,
  String? image,
  bool? destacado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descrip': descrip,
      'image': image,
      'destacado': destacado,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipoExpRecordDocumentEquality implements Equality<TipoExpRecord> {
  const TipoExpRecordDocumentEquality();

  @override
  bool equals(TipoExpRecord? e1, TipoExpRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descrip == e2?.descrip &&
        e1?.image == e2?.image &&
        e1?.destacado == e2?.destacado;
  }

  @override
  int hash(TipoExpRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.descrip, e?.image, e?.destacado]);

  @override
  bool isValidKey(Object? o) => o is TipoExpRecord;
}
