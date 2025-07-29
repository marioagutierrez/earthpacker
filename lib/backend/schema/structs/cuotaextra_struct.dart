// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuotaextraStruct extends FFFirebaseStruct {
  CuotaextraStruct({
    bool? requerido,
    double? monto,
    String? moneda,
    String? ciclo,
    List<String>? destinado,
    String? motivo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _requerido = requerido,
        _monto = monto,
        _moneda = moneda,
        _ciclo = ciclo,
        _destinado = destinado,
        _motivo = motivo,
        super(firestoreUtilData);

  // "requerido" field.
  bool? _requerido;
  bool get requerido => _requerido ?? false;
  set requerido(bool? val) => _requerido = val;

  bool hasRequerido() => _requerido != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  set monto(double? val) => _monto = val;

  void incrementMonto(double amount) => monto = monto + amount;

  bool hasMonto() => _monto != null;

  // "moneda" field.
  String? _moneda;
  String get moneda => _moneda ?? '';
  set moneda(String? val) => _moneda = val;

  bool hasMoneda() => _moneda != null;

  // "ciclo" field.
  String? _ciclo;
  String get ciclo => _ciclo ?? '';
  set ciclo(String? val) => _ciclo = val;

  bool hasCiclo() => _ciclo != null;

  // "destinado" field.
  List<String>? _destinado;
  List<String> get destinado => _destinado ?? const [];
  set destinado(List<String>? val) => _destinado = val;

  void updateDestinado(Function(List<String>) updateFn) {
    updateFn(_destinado ??= []);
  }

  bool hasDestinado() => _destinado != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  set motivo(String? val) => _motivo = val;

  bool hasMotivo() => _motivo != null;

  static CuotaextraStruct fromMap(Map<String, dynamic> data) =>
      CuotaextraStruct(
        requerido: data['requerido'] as bool?,
        monto: castToType<double>(data['monto']),
        moneda: data['moneda'] as String?,
        ciclo: data['ciclo'] as String?,
        destinado: getDataList(data['destinado']),
        motivo: data['motivo'] as String?,
      );

  static CuotaextraStruct? maybeFromMap(dynamic data) => data is Map
      ? CuotaextraStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'requerido': _requerido,
        'monto': _monto,
        'moneda': _moneda,
        'ciclo': _ciclo,
        'destinado': _destinado,
        'motivo': _motivo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'requerido': serializeParam(
          _requerido,
          ParamType.bool,
        ),
        'monto': serializeParam(
          _monto,
          ParamType.double,
        ),
        'moneda': serializeParam(
          _moneda,
          ParamType.String,
        ),
        'ciclo': serializeParam(
          _ciclo,
          ParamType.String,
        ),
        'destinado': serializeParam(
          _destinado,
          ParamType.String,
          isList: true,
        ),
        'motivo': serializeParam(
          _motivo,
          ParamType.String,
        ),
      }.withoutNulls;

  static CuotaextraStruct fromSerializableMap(Map<String, dynamic> data) =>
      CuotaextraStruct(
        requerido: deserializeParam(
          data['requerido'],
          ParamType.bool,
          false,
        ),
        monto: deserializeParam(
          data['monto'],
          ParamType.double,
          false,
        ),
        moneda: deserializeParam(
          data['moneda'],
          ParamType.String,
          false,
        ),
        ciclo: deserializeParam(
          data['ciclo'],
          ParamType.String,
          false,
        ),
        destinado: deserializeParam<String>(
          data['destinado'],
          ParamType.String,
          true,
        ),
        motivo: deserializeParam(
          data['motivo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CuotaextraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CuotaextraStruct &&
        requerido == other.requerido &&
        monto == other.monto &&
        moneda == other.moneda &&
        ciclo == other.ciclo &&
        listEquality.equals(destinado, other.destinado) &&
        motivo == other.motivo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([requerido, monto, moneda, ciclo, destinado, motivo]);
}

CuotaextraStruct createCuotaextraStruct({
  bool? requerido,
  double? monto,
  String? moneda,
  String? ciclo,
  String? motivo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CuotaextraStruct(
      requerido: requerido,
      monto: monto,
      moneda: moneda,
      ciclo: ciclo,
      motivo: motivo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CuotaextraStruct? updateCuotaextraStruct(
  CuotaextraStruct? cuotaextra, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cuotaextra
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCuotaextraStructData(
  Map<String, dynamic> firestoreData,
  CuotaextraStruct? cuotaextra,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cuotaextra == null) {
    return;
  }
  if (cuotaextra.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cuotaextra.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cuotaextraData = getCuotaextraFirestoreData(cuotaextra, forFieldValue);
  final nestedData = cuotaextraData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cuotaextra.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCuotaextraFirestoreData(
  CuotaextraStruct? cuotaextra, [
  bool forFieldValue = false,
]) {
  if (cuotaextra == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cuotaextra.toMap());

  // Add any Firestore field values
  cuotaextra.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCuotaextraListFirestoreData(
  List<CuotaextraStruct>? cuotaextras,
) =>
    cuotaextras?.map((e) => getCuotaextraFirestoreData(e, true)).toList() ?? [];
