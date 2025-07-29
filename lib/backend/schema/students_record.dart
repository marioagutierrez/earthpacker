import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentsRecord extends FirestoreRecord {
  StudentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "institucion" field.
  String? _institucion;
  String get institucion => _institucion ?? '';
  bool hasInstitucion() => _institucion != null;

  // "carrera" field.
  String? _carrera;
  String get carrera => _carrera ?? '';
  bool hasCarrera() => _carrera != null;

  // "grado" field.
  String? _grado;
  String get grado => _grado ?? '';
  bool hasGrado() => _grado != null;

  // "matricula" field.
  String? _matricula;
  String get matricula => _matricula ?? '';
  bool hasMatricula() => _matricula != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "interes" field.
  String? _interes;
  String get interes => _interes ?? '';
  bool hasInteres() => _interes != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _institucion = snapshotData['institucion'] as String?;
    _carrera = snapshotData['carrera'] as String?;
    _grado = snapshotData['grado'] as String?;
    _matricula = snapshotData['matricula'] as String?;
    _contact = snapshotData['contact'] as String?;
    _interes = snapshotData['interes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('students');

  static Stream<StudentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentsRecord.fromSnapshot(s));

  static Future<StudentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentsRecord.fromSnapshot(s));

  static StudentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentsRecordData({
  DocumentReference? user,
  String? institucion,
  String? carrera,
  String? grado,
  String? matricula,
  String? contact,
  String? interes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'institucion': institucion,
      'carrera': carrera,
      'grado': grado,
      'matricula': matricula,
      'contact': contact,
      'interes': interes,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentsRecordDocumentEquality implements Equality<StudentsRecord> {
  const StudentsRecordDocumentEquality();

  @override
  bool equals(StudentsRecord? e1, StudentsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.institucion == e2?.institucion &&
        e1?.carrera == e2?.carrera &&
        e1?.grado == e2?.grado &&
        e1?.matricula == e2?.matricula &&
        e1?.contact == e2?.contact &&
        e1?.interes == e2?.interes;
  }

  @override
  int hash(StudentsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.institucion,
        e?.carrera,
        e?.grado,
        e?.matricula,
        e?.contact,
        e?.interes
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentsRecord;
}
