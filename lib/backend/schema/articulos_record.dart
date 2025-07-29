import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticulosRecord extends FirestoreRecord {
  ArticulosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "published" field.
  bool? _published;
  bool get published => _published ?? false;
  bool hasPublished() => _published != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  bool hasAutor() => _autor != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _titulo = snapshotData['Titulo'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _published = snapshotData['published'] as bool?;
    _video = snapshotData['video'] as String?;
    _autor = snapshotData['autor'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articulos');

  static Stream<ArticulosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticulosRecord.fromSnapshot(s));

  static Future<ArticulosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticulosRecord.fromSnapshot(s));

  static ArticulosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticulosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticulosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticulosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticulosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticulosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticulosRecordData({
  DateTime? createdAt,
  String? titulo,
  String? descripcion,
  bool? published,
  String? video,
  String? autor,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'Titulo': titulo,
      'Descripcion': descripcion,
      'published': published,
      'video': video,
      'autor': autor,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticulosRecordDocumentEquality implements Equality<ArticulosRecord> {
  const ArticulosRecordDocumentEquality();

  @override
  bool equals(ArticulosRecord? e1, ArticulosRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.published == e2?.published &&
        e1?.video == e2?.video &&
        e1?.autor == e2?.autor &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(ArticulosRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.titulo,
        e?.descripcion,
        e?.published,
        e?.video,
        e?.autor,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticulosRecord;
}
