import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VinetasRecord extends FirestoreRecord {
  VinetasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  void _initializeFields() {
    _icon = snapshotData['icon'] as String?;
    _text = snapshotData['text'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vinetas');

  static Stream<VinetasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VinetasRecord.fromSnapshot(s));

  static Future<VinetasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VinetasRecord.fromSnapshot(s));

  static VinetasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VinetasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VinetasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VinetasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VinetasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VinetasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVinetasRecordData({
  String? icon,
  String? text,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'icon': icon,
      'text': text,
    }.withoutNulls,
  );

  return firestoreData;
}

class VinetasRecordDocumentEquality implements Equality<VinetasRecord> {
  const VinetasRecordDocumentEquality();

  @override
  bool equals(VinetasRecord? e1, VinetasRecord? e2) {
    return e1?.icon == e2?.icon && e1?.text == e2?.text;
  }

  @override
  int hash(VinetasRecord? e) => const ListEquality().hash([e?.icon, e?.text]);

  @override
  bool isValidKey(Object? o) => o is VinetasRecord;
}
