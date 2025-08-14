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

  // "ruta" field.
  String? _ruta;
  String get ruta => _ruta ?? '';
  bool hasRuta() => _ruta != null;

  // "mailto" field.
  String? _mailto;
  String get mailto => _mailto ?? '';
  bool hasMailto() => _mailto != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _destino = snapshotData['destino'] as String?;
    _fechaIn = snapshotData['fechaIn'] as DateTime?;
    _fechaOut = snapshotData['fechaOut'] as DateTime?;
    _descrip = snapshotData['descrip'] as String?;
    _coments = snapshotData['coments'] as String?;
    _status = snapshotData['status'] as bool?;
    _ruta = snapshotData['ruta'] as String?;
    _mailto = snapshotData['mailto'] as String?;
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
  String? ruta,
  String? mailto,
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
      'ruta': ruta,
      'mailto': mailto,
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
        e1?.status == e2?.status &&
        e1?.ruta == e2?.ruta &&
        e1?.mailto == e2?.mailto;
  }

  @override
  int hash(FreeTravelRecord? e) => const ListEquality().hash([
        e?.user,
        e?.destino,
        e?.fechaIn,
        e?.fechaOut,
        e?.descrip,
        e?.coments,
        e?.status,
        e?.ruta,
        e?.mailto
      ]);

  @override
  bool isValidKey(Object? o) => o is FreeTravelRecord;
}
