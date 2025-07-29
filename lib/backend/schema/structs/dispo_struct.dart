// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DispoStruct extends FFFirebaseStruct {
  DispoStruct({
    String? mes,
    bool? available,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _mes = mes,
        _available = available,
        super(firestoreUtilData);

  // "mes" field.
  String? _mes;
  String get mes => _mes ?? '';
  set mes(String? val) => _mes = val;

  bool hasMes() => _mes != null;

  // "available" field.
  bool? _available;
  bool get available => _available ?? false;
  set available(bool? val) => _available = val;

  bool hasAvailable() => _available != null;

  static DispoStruct fromMap(Map<String, dynamic> data) => DispoStruct(
        mes: data['mes'] as String?,
        available: data['available'] as bool?,
      );

  static DispoStruct? maybeFromMap(dynamic data) =>
      data is Map ? DispoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'mes': _mes,
        'available': _available,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mes': serializeParam(
          _mes,
          ParamType.String,
        ),
        'available': serializeParam(
          _available,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DispoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DispoStruct(
        mes: deserializeParam(
          data['mes'],
          ParamType.String,
          false,
        ),
        available: deserializeParam(
          data['available'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DispoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DispoStruct &&
        mes == other.mes &&
        available == other.available;
  }

  @override
  int get hashCode => const ListEquality().hash([mes, available]);
}

DispoStruct createDispoStruct({
  String? mes,
  bool? available,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DispoStruct(
      mes: mes,
      available: available,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DispoStruct? updateDispoStruct(
  DispoStruct? dispo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dispo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDispoStructData(
  Map<String, dynamic> firestoreData,
  DispoStruct? dispo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dispo == null) {
    return;
  }
  if (dispo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dispo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dispoData = getDispoFirestoreData(dispo, forFieldValue);
  final nestedData = dispoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dispo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDispoFirestoreData(
  DispoStruct? dispo, [
  bool forFieldValue = false,
]) {
  if (dispo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dispo.toMap());

  // Add any Firestore field values
  dispo.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDispoListFirestoreData(
  List<DispoStruct>? dispos,
) =>
    dispos?.map((e) => getDispoFirestoreData(e, true)).toList() ?? [];
