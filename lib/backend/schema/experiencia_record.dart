import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExperienciaRecord extends FirestoreRecord {
  ExperienciaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "anfitrion" field.
  DocumentReference? _anfitrion;
  DocumentReference? get anfitrion => _anfitrion;
  bool hasAnfitrion() => _anfitrion != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  // "destacado" field.
  bool? _destacado;
  bool get destacado => _destacado ?? false;
  bool hasDestacado() => _destacado != null;

  // "vineta" field.
  DocumentReference? _vineta;
  DocumentReference? get vineta => _vineta;
  bool hasVineta() => _vineta != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "imagenes" field.
  List<String>? _imagenes;
  List<String> get imagenes => _imagenes ?? const [];
  bool hasImagenes() => _imagenes != null;

  // "tipo_complejo" field.
  String? _tipoComplejo;
  String get tipoComplejo => _tipoComplejo ?? '';
  bool hasTipoComplejo() => _tipoComplejo != null;

  // "ubicacion_string" field.
  String? _ubicacionString;
  String get ubicacionString => _ubicacionString ?? '';
  bool hasUbicacionString() => _ubicacionString != null;

  // "cuotaReq" field.
  bool? _cuotaReq;
  bool get cuotaReq => _cuotaReq ?? false;
  bool hasCuotaReq() => _cuotaReq != null;

  // "cuotaInfo" field.
  CuotaextraStruct? _cuotaInfo;
  CuotaextraStruct get cuotaInfo => _cuotaInfo ?? CuotaextraStruct();
  bool hasCuotaInfo() => _cuotaInfo != null;

  // "requisitos" field.
  String? _requisitos;
  String get requisitos => _requisitos ?? '';
  bool hasRequisitos() => _requisitos != null;

  // "minTime" field.
  CicloStruct? _minTime;
  CicloStruct get minTime => _minTime ?? CicloStruct();
  bool hasMinTime() => _minTime != null;

  // "maxTime" field.
  CicloStruct? _maxTime;
  CicloStruct get maxTime => _maxTime ?? CicloStruct();
  bool hasMaxTime() => _maxTime != null;

  // "Otorgamiento" field.
  List<DocumentReference>? _otorgamiento;
  List<DocumentReference> get otorgamiento => _otorgamiento ?? const [];
  bool hasOtorgamiento() => _otorgamiento != null;

  // "trabajos" field.
  List<DocumentReference>? _trabajos;
  List<DocumentReference> get trabajos => _trabajos ?? const [];
  bool hasTrabajos() => _trabajos != null;

  // "dispo" field.
  List<DispoStruct>? _dispo;
  List<DispoStruct> get dispo => _dispo ?? const [];
  bool hasDispo() => _dispo != null;

  // "institucion" field.
  bool? _institucion;
  bool get institucion => _institucion ?? false;
  bool hasInstitucion() => _institucion != null;

  // "reqList" field.
  List<String>? _reqList;
  List<String> get reqList => _reqList ?? const [];
  bool hasReqList() => _reqList != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _pais = snapshotData['pais'] as String?;
    _ubicacion = snapshotData['ubicacion'] as LatLng?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _anfitrion = snapshotData['anfitrion'] as DocumentReference?;
    _activo = snapshotData['activo'] as bool?;
    _destacado = snapshotData['destacado'] as bool?;
    _vineta = snapshotData['vineta'] as DocumentReference?;
    _imagen = snapshotData['imagen'] as String?;
    _imagenes = getDataList(snapshotData['imagenes']);
    _tipoComplejo = snapshotData['tipo_complejo'] as String?;
    _ubicacionString = snapshotData['ubicacion_string'] as String?;
    _cuotaReq = snapshotData['cuotaReq'] as bool?;
    _cuotaInfo = snapshotData['cuotaInfo'] is CuotaextraStruct
        ? snapshotData['cuotaInfo']
        : CuotaextraStruct.maybeFromMap(snapshotData['cuotaInfo']);
    _requisitos = snapshotData['requisitos'] as String?;
    _minTime = snapshotData['minTime'] is CicloStruct
        ? snapshotData['minTime']
        : CicloStruct.maybeFromMap(snapshotData['minTime']);
    _maxTime = snapshotData['maxTime'] is CicloStruct
        ? snapshotData['maxTime']
        : CicloStruct.maybeFromMap(snapshotData['maxTime']);
    _otorgamiento = getDataList(snapshotData['Otorgamiento']);
    _trabajos = getDataList(snapshotData['trabajos']);
    _dispo = getStructList(
      snapshotData['dispo'],
      DispoStruct.fromMap,
    );
    _institucion = snapshotData['institucion'] as bool?;
    _reqList = getDataList(snapshotData['reqList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('experiencia');

  static Stream<ExperienciaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExperienciaRecord.fromSnapshot(s));

  static Future<ExperienciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExperienciaRecord.fromSnapshot(s));

  static ExperienciaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExperienciaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExperienciaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExperienciaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExperienciaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExperienciaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExperienciaRecordData({
  String? title,
  String? descripcion,
  String? pais,
  LatLng? ubicacion,
  DocumentReference? categoria,
  DocumentReference? anfitrion,
  bool? activo,
  bool? destacado,
  DocumentReference? vineta,
  String? imagen,
  String? tipoComplejo,
  String? ubicacionString,
  bool? cuotaReq,
  CuotaextraStruct? cuotaInfo,
  String? requisitos,
  CicloStruct? minTime,
  CicloStruct? maxTime,
  bool? institucion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'descripcion': descripcion,
      'pais': pais,
      'ubicacion': ubicacion,
      'categoria': categoria,
      'anfitrion': anfitrion,
      'activo': activo,
      'destacado': destacado,
      'vineta': vineta,
      'imagen': imagen,
      'tipo_complejo': tipoComplejo,
      'ubicacion_string': ubicacionString,
      'cuotaReq': cuotaReq,
      'cuotaInfo': CuotaextraStruct().toMap(),
      'requisitos': requisitos,
      'minTime': CicloStruct().toMap(),
      'maxTime': CicloStruct().toMap(),
      'institucion': institucion,
    }.withoutNulls,
  );

  // Handle nested data for "cuotaInfo" field.
  addCuotaextraStructData(firestoreData, cuotaInfo, 'cuotaInfo');

  // Handle nested data for "minTime" field.
  addCicloStructData(firestoreData, minTime, 'minTime');

  // Handle nested data for "maxTime" field.
  addCicloStructData(firestoreData, maxTime, 'maxTime');

  return firestoreData;
}

class ExperienciaRecordDocumentEquality implements Equality<ExperienciaRecord> {
  const ExperienciaRecordDocumentEquality();

  @override
  bool equals(ExperienciaRecord? e1, ExperienciaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.descripcion == e2?.descripcion &&
        e1?.pais == e2?.pais &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.categoria == e2?.categoria &&
        e1?.anfitrion == e2?.anfitrion &&
        e1?.activo == e2?.activo &&
        e1?.destacado == e2?.destacado &&
        e1?.vineta == e2?.vineta &&
        e1?.imagen == e2?.imagen &&
        listEquality.equals(e1?.imagenes, e2?.imagenes) &&
        e1?.tipoComplejo == e2?.tipoComplejo &&
        e1?.ubicacionString == e2?.ubicacionString &&
        e1?.cuotaReq == e2?.cuotaReq &&
        e1?.cuotaInfo == e2?.cuotaInfo &&
        e1?.requisitos == e2?.requisitos &&
        e1?.minTime == e2?.minTime &&
        e1?.maxTime == e2?.maxTime &&
        listEquality.equals(e1?.otorgamiento, e2?.otorgamiento) &&
        listEquality.equals(e1?.trabajos, e2?.trabajos) &&
        listEquality.equals(e1?.dispo, e2?.dispo) &&
        e1?.institucion == e2?.institucion &&
        listEquality.equals(e1?.reqList, e2?.reqList);
  }

  @override
  int hash(ExperienciaRecord? e) => const ListEquality().hash([
        e?.title,
        e?.descripcion,
        e?.pais,
        e?.ubicacion,
        e?.categoria,
        e?.anfitrion,
        e?.activo,
        e?.destacado,
        e?.vineta,
        e?.imagen,
        e?.imagenes,
        e?.tipoComplejo,
        e?.ubicacionString,
        e?.cuotaReq,
        e?.cuotaInfo,
        e?.requisitos,
        e?.minTime,
        e?.maxTime,
        e?.otorgamiento,
        e?.trabajos,
        e?.dispo,
        e?.institucion,
        e?.reqList
      ]);

  @override
  bool isValidKey(Object? o) => o is ExperienciaRecord;
}
