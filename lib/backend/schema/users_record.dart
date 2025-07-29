import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "anfitrion" field.
  bool? _anfitrion;
  bool get anfitrion => _anfitrion ?? false;
  bool hasAnfitrion() => _anfitrion != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "redsocial" field.
  String? _redsocial;
  String get redsocial => _redsocial ?? '';
  bool hasRedsocial() => _redsocial != null;

  // "nombreEmpresa" field.
  String? _nombreEmpresa;
  String get nombreEmpresa => _nombreEmpresa ?? '';
  bool hasNombreEmpresa() => _nombreEmpresa != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "aprobado" field.
  bool? _aprobado;
  bool get aprobado => _aprobado ?? false;
  bool hasAprobado() => _aprobado != null;

  // "en_posicion" field.
  bool? _enPosicion;
  bool get enPosicion => _enPosicion ?? false;
  bool hasEnPosicion() => _enPosicion != null;

  // "solicitudes" field.
  List<DocumentReference>? _solicitudes;
  List<DocumentReference> get solicitudes => _solicitudes ?? const [];
  bool hasSolicitudes() => _solicitudes != null;

  // "nick_name" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  bool hasNickName() => _nickName != null;

  // "kyc_check" field.
  String? _kycCheck;
  String get kycCheck => _kycCheck ?? '';
  bool hasKycCheck() => _kycCheck != null;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  bool hasVerified() => _verified != null;

  // "in_review_kyc" field.
  bool? _inReviewKyc;
  bool get inReviewKyc => _inReviewKyc ?? false;
  bool hasInReviewKyc() => _inReviewKyc != null;

  // "estudiante" field.
  bool? _estudiante;
  bool get estudiante => _estudiante ?? false;
  bool hasEstudiante() => _estudiante != null;

  // "intituto" field.
  bool? _intituto;
  bool get intituto => _intituto ?? false;
  bool hasIntituto() => _intituto != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _anfitrion = snapshotData['anfitrion'] as bool?;
    _pais = snapshotData['pais'] as String?;
    _website = snapshotData['website'] as String?;
    _redsocial = snapshotData['redsocial'] as String?;
    _nombreEmpresa = snapshotData['nombreEmpresa'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _aprobado = snapshotData['aprobado'] as bool?;
    _enPosicion = snapshotData['en_posicion'] as bool?;
    _solicitudes = getDataList(snapshotData['solicitudes']);
    _nickName = snapshotData['nick_name'] as String?;
    _kycCheck = snapshotData['kyc_check'] as String?;
    _verified = snapshotData['verified'] as bool?;
    _inReviewKyc = snapshotData['in_review_kyc'] as bool?;
    _estudiante = snapshotData['estudiante'] as bool?;
    _intituto = snapshotData['intituto'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? anfitrion,
  String? pais,
  String? website,
  String? redsocial,
  String? nombreEmpresa,
  String? direccion,
  bool? aprobado,
  bool? enPosicion,
  String? nickName,
  String? kycCheck,
  bool? verified,
  bool? inReviewKyc,
  bool? estudiante,
  bool? intituto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'anfitrion': anfitrion,
      'pais': pais,
      'website': website,
      'redsocial': redsocial,
      'nombreEmpresa': nombreEmpresa,
      'direccion': direccion,
      'aprobado': aprobado,
      'en_posicion': enPosicion,
      'nick_name': nickName,
      'kyc_check': kycCheck,
      'verified': verified,
      'in_review_kyc': inReviewKyc,
      'estudiante': estudiante,
      'intituto': intituto,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.anfitrion == e2?.anfitrion &&
        e1?.pais == e2?.pais &&
        e1?.website == e2?.website &&
        e1?.redsocial == e2?.redsocial &&
        e1?.nombreEmpresa == e2?.nombreEmpresa &&
        e1?.direccion == e2?.direccion &&
        e1?.aprobado == e2?.aprobado &&
        e1?.enPosicion == e2?.enPosicion &&
        listEquality.equals(e1?.solicitudes, e2?.solicitudes) &&
        e1?.nickName == e2?.nickName &&
        e1?.kycCheck == e2?.kycCheck &&
        e1?.verified == e2?.verified &&
        e1?.inReviewKyc == e2?.inReviewKyc &&
        e1?.estudiante == e2?.estudiante &&
        e1?.intituto == e2?.intituto;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.anfitrion,
        e?.pais,
        e?.website,
        e?.redsocial,
        e?.nombreEmpresa,
        e?.direccion,
        e?.aprobado,
        e?.enPosicion,
        e?.solicitudes,
        e?.nickName,
        e?.kycCheck,
        e?.verified,
        e?.inReviewKyc,
        e?.estudiante,
        e?.intituto
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
