import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeaturedRecord extends FirestoreRecord {
  FeaturedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "experiencia" field.
  DocumentReference? _experiencia;
  DocumentReference? get experiencia => _experiencia;
  bool hasExperiencia() => _experiencia != null;

  // "titlulo" field.
  String? _titlulo;
  String get titlulo => _titlulo ?? '';
  bool hasTitlulo() => _titlulo != null;

  void _initializeFields() {
    _experiencia = snapshotData['experiencia'] as DocumentReference?;
    _titlulo = snapshotData['titlulo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('featured');

  static Stream<FeaturedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeaturedRecord.fromSnapshot(s));

  static Future<FeaturedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeaturedRecord.fromSnapshot(s));

  static FeaturedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeaturedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeaturedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeaturedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeaturedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeaturedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeaturedRecordData({
  DocumentReference? experiencia,
  String? titlulo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'experiencia': experiencia,
      'titlulo': titlulo,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeaturedRecordDocumentEquality implements Equality<FeaturedRecord> {
  const FeaturedRecordDocumentEquality();

  @override
  bool equals(FeaturedRecord? e1, FeaturedRecord? e2) {
    return e1?.experiencia == e2?.experiencia && e1?.titlulo == e2?.titlulo;
  }

  @override
  int hash(FeaturedRecord? e) =>
      const ListEquality().hash([e?.experiencia, e?.titlulo]);

  @override
  bool isValidKey(Object? o) => o is FeaturedRecord;
}
