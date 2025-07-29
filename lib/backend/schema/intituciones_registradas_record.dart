import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntitucionesRegistradasRecord extends FirestoreRecord {
  IntitucionesRegistradasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "Direccinfsica" field.
  String? _direccinfsica;
  String get direccinfsica => _direccinfsica ?? '';
  bool hasDireccinfsica() => _direccinfsica != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "numero_registro" field.
  String? _numeroRegistro;
  String get numeroRegistro => _numeroRegistro ?? '';
  bool hasNumeroRegistro() => _numeroRegistro != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "p_c_mail" field.
  String? _pCMail;
  String get pCMail => _pCMail ?? '';
  bool hasPCMail() => _pCMail != null;

  // "p_c_phone" field.
  String? _pCPhone;
  String get pCPhone => _pCPhone ?? '';
  bool hasPCPhone() => _pCPhone != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _nombre = snapshotData['nombre'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _direccinfsica = snapshotData['Direccinfsica'] as String?;
    _ubicacion = snapshotData['ubicacion'] as LatLng?;
    _numeroRegistro = snapshotData['numero_registro'] as String?;
    _logo = snapshotData['logo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _pCMail = snapshotData['p_c_mail'] as String?;
    _pCPhone = snapshotData['p_c_phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('intituciones_registradas');

  static Stream<IntitucionesRegistradasRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => IntitucionesRegistradasRecord.fromSnapshot(s));

  static Future<IntitucionesRegistradasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IntitucionesRegistradasRecord.fromSnapshot(s));

  static IntitucionesRegistradasRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      IntitucionesRegistradasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IntitucionesRegistradasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IntitucionesRegistradasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IntitucionesRegistradasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IntitucionesRegistradasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIntitucionesRegistradasRecordData({
  DocumentReference? user,
  String? nombre,
  String? tipo,
  String? direccinfsica,
  LatLng? ubicacion,
  String? numeroRegistro,
  String? logo,
  String? descripcion,
  String? pCMail,
  String? pCPhone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'nombre': nombre,
      'tipo': tipo,
      'Direccinfsica': direccinfsica,
      'ubicacion': ubicacion,
      'numero_registro': numeroRegistro,
      'logo': logo,
      'descripcion': descripcion,
      'p_c_mail': pCMail,
      'p_c_phone': pCPhone,
    }.withoutNulls,
  );

  return firestoreData;
}

class IntitucionesRegistradasRecordDocumentEquality
    implements Equality<IntitucionesRegistradasRecord> {
  const IntitucionesRegistradasRecordDocumentEquality();

  @override
  bool equals(
      IntitucionesRegistradasRecord? e1, IntitucionesRegistradasRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.nombre == e2?.nombre &&
        e1?.tipo == e2?.tipo &&
        e1?.direccinfsica == e2?.direccinfsica &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.numeroRegistro == e2?.numeroRegistro &&
        e1?.logo == e2?.logo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.pCMail == e2?.pCMail &&
        e1?.pCPhone == e2?.pCPhone;
  }

  @override
  int hash(IntitucionesRegistradasRecord? e) => const ListEquality().hash([
        e?.user,
        e?.nombre,
        e?.tipo,
        e?.direccinfsica,
        e?.ubicacion,
        e?.numeroRegistro,
        e?.logo,
        e?.descripcion,
        e?.pCMail,
        e?.pCPhone
      ]);

  @override
  bool isValidKey(Object? o) => o is IntitucionesRegistradasRecord;
}
