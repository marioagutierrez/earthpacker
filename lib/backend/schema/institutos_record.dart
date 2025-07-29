import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstitutosRecord extends FirestoreRecord {
  InstitutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "nombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "verificationCode" field.
  String? _verificationCode;
  String get verificationCode => _verificationCode ?? '';
  bool hasVerificationCode() => _verificationCode != null;

  void _initializeFields() {
    _activo = snapshotData['activo'] as bool?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _id = snapshotData['id'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _nombreCompleto = snapshotData['nombreCompleto'] as String?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _verificationCode = snapshotData['verificationCode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('institutos');

  static Stream<InstitutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InstitutosRecord.fromSnapshot(s));

  static Future<InstitutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InstitutosRecord.fromSnapshot(s));

  static InstitutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InstitutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InstitutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InstitutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InstitutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InstitutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInstitutosRecordData({
  bool? activo,
  DateTime? fechaCreacion,
  String? id,
  String? nombre,
  String? nombreCompleto,
  String? ubicacion,
  String? verificationCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'activo': activo,
      'fechaCreacion': fechaCreacion,
      'id': id,
      'nombre': nombre,
      'nombreCompleto': nombreCompleto,
      'ubicacion': ubicacion,
      'verificationCode': verificationCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstitutosRecordDocumentEquality implements Equality<InstitutosRecord> {
  const InstitutosRecordDocumentEquality();

  @override
  bool equals(InstitutosRecord? e1, InstitutosRecord? e2) {
    return e1?.activo == e2?.activo &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.id == e2?.id &&
        e1?.nombre == e2?.nombre &&
        e1?.nombreCompleto == e2?.nombreCompleto &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.verificationCode == e2?.verificationCode;
  }

  @override
  int hash(InstitutosRecord? e) => const ListEquality().hash([
        e?.activo,
        e?.fechaCreacion,
        e?.id,
        e?.nombre,
        e?.nombreCompleto,
        e?.ubicacion,
        e?.verificationCode
      ]);

  @override
  bool isValidKey(Object? o) => o is InstitutosRecord;
}
