import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaisesRecord extends FirestoreRecord {
  PaisesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone_code" field.
  String? _phoneCode;
  String get phoneCode => _phoneCode ?? '';
  bool hasPhoneCode() => _phoneCode != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _name = snapshotData['name'] as String?;
    _phoneCode = snapshotData['phone_code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paises');

  static Stream<PaisesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaisesRecord.fromSnapshot(s));

  static Future<PaisesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaisesRecord.fromSnapshot(s));

  static PaisesRecord fromSnapshot(DocumentSnapshot snapshot) => PaisesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaisesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaisesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaisesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaisesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaisesRecordData({
  String? nombre,
  String? name,
  String? phoneCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'name': name,
      'phone_code': phoneCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaisesRecordDocumentEquality implements Equality<PaisesRecord> {
  const PaisesRecordDocumentEquality();

  @override
  bool equals(PaisesRecord? e1, PaisesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.name == e2?.name &&
        e1?.phoneCode == e2?.phoneCode;
  }

  @override
  int hash(PaisesRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.name, e?.phoneCode]);

  @override
  bool isValidKey(Object? o) => o is PaisesRecord;
}
