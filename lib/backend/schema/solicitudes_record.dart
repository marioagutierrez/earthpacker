import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudesRecord extends FirestoreRecord {
  SolicitudesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "anfitrion" field.
  DocumentReference? _anfitrion;
  DocumentReference? get anfitrion => _anfitrion;
  bool hasAnfitrion() => _anfitrion != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "posicion" field.
  DocumentReference? _posicion;
  DocumentReference? get posicion => _posicion;
  bool hasPosicion() => _posicion != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "dateCreation" field.
  DateTime? _dateCreation;
  DateTime? get dateCreation => _dateCreation;
  bool hasDateCreation() => _dateCreation != null;

  void _initializeFields() {
    _anfitrion = snapshotData['anfitrion'] as DocumentReference?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _posicion = snapshotData['posicion'] as DocumentReference?;
    _mensaje = snapshotData['mensaje'] as String?;
    _status = castToType<int>(snapshotData['status']);
    _dateCreation = snapshotData['dateCreation'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solicitudes');

  static Stream<SolicitudesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolicitudesRecord.fromSnapshot(s));

  static Future<SolicitudesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SolicitudesRecord.fromSnapshot(s));

  static SolicitudesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolicitudesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudesRecordData({
  DocumentReference? anfitrion,
  DocumentReference? usuario,
  DocumentReference? posicion,
  String? mensaje,
  int? status,
  DateTime? dateCreation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'anfitrion': anfitrion,
      'usuario': usuario,
      'posicion': posicion,
      'mensaje': mensaje,
      'status': status,
      'dateCreation': dateCreation,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudesRecordDocumentEquality implements Equality<SolicitudesRecord> {
  const SolicitudesRecordDocumentEquality();

  @override
  bool equals(SolicitudesRecord? e1, SolicitudesRecord? e2) {
    return e1?.anfitrion == e2?.anfitrion &&
        e1?.usuario == e2?.usuario &&
        e1?.posicion == e2?.posicion &&
        e1?.mensaje == e2?.mensaje &&
        e1?.status == e2?.status &&
        e1?.dateCreation == e2?.dateCreation;
  }

  @override
  int hash(SolicitudesRecord? e) => const ListEquality().hash([
        e?.anfitrion,
        e?.usuario,
        e?.posicion,
        e?.mensaje,
        e?.status,
        e?.dateCreation
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudesRecord;
}
