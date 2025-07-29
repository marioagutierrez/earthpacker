// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CicloStruct extends FFFirebaseStruct {
  CicloStruct({
    int? cantidad,
    String? unidad,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cantidad = cantidad,
        _unidad = unidad,
        super(firestoreUtilData);

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;

  void incrementCantidad(int amount) => cantidad = cantidad + amount;

  bool hasCantidad() => _cantidad != null;

  // "unidad" field.
  String? _unidad;
  String get unidad => _unidad ?? '';
  set unidad(String? val) => _unidad = val;

  bool hasUnidad() => _unidad != null;

  static CicloStruct fromMap(Map<String, dynamic> data) => CicloStruct(
        cantidad: castToType<int>(data['cantidad']),
        unidad: data['unidad'] as String?,
      );

  static CicloStruct? maybeFromMap(dynamic data) =>
      data is Map ? CicloStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cantidad': _cantidad,
        'unidad': _unidad,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
        'unidad': serializeParam(
          _unidad,
          ParamType.String,
        ),
      }.withoutNulls;

  static CicloStruct fromSerializableMap(Map<String, dynamic> data) =>
      CicloStruct(
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
        unidad: deserializeParam(
          data['unidad'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CicloStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CicloStruct &&
        cantidad == other.cantidad &&
        unidad == other.unidad;
  }

  @override
  int get hashCode => const ListEquality().hash([cantidad, unidad]);
}

CicloStruct createCicloStruct({
  int? cantidad,
  String? unidad,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CicloStruct(
      cantidad: cantidad,
      unidad: unidad,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CicloStruct? updateCicloStruct(
  CicloStruct? ciclo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ciclo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCicloStructData(
  Map<String, dynamic> firestoreData,
  CicloStruct? ciclo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ciclo == null) {
    return;
  }
  if (ciclo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ciclo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cicloData = getCicloFirestoreData(ciclo, forFieldValue);
  final nestedData = cicloData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ciclo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCicloFirestoreData(
  CicloStruct? ciclo, [
  bool forFieldValue = false,
]) {
  if (ciclo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ciclo.toMap());

  // Add any Firestore field values
  ciclo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCicloListFirestoreData(
  List<CicloStruct>? ciclos,
) =>
    ciclos?.map((e) => getCicloFirestoreData(e, true)).toList() ?? [];
