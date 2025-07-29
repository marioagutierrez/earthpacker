import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FreeTravelRecord extends FirestoreRecord {
  FreeTravelRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "destino" field.
  String? _destino;
  String get destino => _destino ?? '';
  bool hasDestino() => _destino != null;

  // "fechaIn" field.
  DateTime? _fechaIn;
  DateTime? get fechaIn => _fechaIn;
  bool hasFechaIn() => _fechaIn != null;

  // "fechaOut" field.
  DateTime? _fechaOut;
  DateTime? get fechaOut => _fechaOut;
  bool hasFechaOut() => _fechaOut != null;

  // "descrip" field.
  String? _descrip;
  String get descrip => _descrip ?? '';
  bool hasDescrip() => _descrip != null;

  // "coments" field.
  String? _coments;
  String get coments => _coments ?? '';
  bool hasComents() => _coments != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _destino = snapshotData['destino'] as String?;
    _fechaIn = snapshotData['fechaIn'] as DateTime?;
    _fechaOut = snapshotData['fechaOut'] as DateTime?;
    _descrip = snapshotData['descrip'] as String?;
    _coments = snapshotData['coments'] as String?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('freeTravel');

  static Stream<FreeTravelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FreeTravelRecord.fromSnapshot(s));

  static Future<FreeTravelRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FreeTravelRecord.fromSnapshot(s));

  static FreeTravelRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FreeTravelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FreeTravelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FreeTravelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FreeTravelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FreeTravelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFreeTravelRecordData({
  DocumentReference? user,
  String? destino,
  DateTime? fechaIn,
  DateTime? fechaOut,
  String? descrip,
  String? coments,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'destino': destino,
      'fechaIn': fechaIn,
      'fechaOut': fechaOut,
      'descrip': descrip,
      'coments': coments,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class FreeTravelRecordDocumentEquality implements Equality<FreeTravelRecord> {
  const FreeTravelRecordDocumentEquality();

  @override
  bool equals(FreeTravelRecord? e1, FreeTravelRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.destino == e2?.destino &&
        e1?.fechaIn == e2?.fechaIn &&
        e1?.fechaOut == e2?.fechaOut &&
        e1?.descrip == e2?.descrip &&
        e1?.coments == e2?.coments &&
        e1?.status == e2?.status;
  }

  @override
  int hash(FreeTravelRecord? e) => const ListEquality().hash([
        e?.user,
        e?.destino,
        e?.fechaIn,
        e?.fechaOut,
        e?.descrip,
        e?.coments,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is FreeTravelRecord;
}
