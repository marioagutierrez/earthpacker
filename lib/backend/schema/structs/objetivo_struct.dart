// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ObjetivoStruct extends FFFirebaseStruct {
  ObjetivoStruct({
    String? titulo,
    String? imagen,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titulo = titulo,
        _imagen = imagen,
        super(firestoreUtilData);

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;

  bool hasImagen() => _imagen != null;

  static ObjetivoStruct fromMap(Map<String, dynamic> data) => ObjetivoStruct(
        titulo: data['Titulo'] as String?,
        imagen: data['Imagen'] as String?,
      );

  static ObjetivoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ObjetivoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Titulo': _titulo,
        'Imagen': _imagen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'Imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
      }.withoutNulls;

  static ObjetivoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ObjetivoStruct(
        titulo: deserializeParam(
          data['Titulo'],
          ParamType.String,
          false,
        ),
        imagen: deserializeParam(
          data['Imagen'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ObjetivoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ObjetivoStruct &&
        titulo == other.titulo &&
        imagen == other.imagen;
  }

  @override
  int get hashCode => const ListEquality().hash([titulo, imagen]);
}

ObjetivoStruct createObjetivoStruct({
  String? titulo,
  String? imagen,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ObjetivoStruct(
      titulo: titulo,
      imagen: imagen,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ObjetivoStruct? updateObjetivoStruct(
  ObjetivoStruct? objetivo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    objetivo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addObjetivoStructData(
  Map<String, dynamic> firestoreData,
  ObjetivoStruct? objetivo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (objetivo == null) {
    return;
  }
  if (objetivo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && objetivo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final objetivoData = getObjetivoFirestoreData(objetivo, forFieldValue);
  final nestedData = objetivoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = objetivo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getObjetivoFirestoreData(
  ObjetivoStruct? objetivo, [
  bool forFieldValue = false,
]) {
  if (objetivo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(objetivo.toMap());

  // Add any Firestore field values
  objetivo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getObjetivoListFirestoreData(
  List<ObjetivoStruct>? objetivos,
) =>
    objetivos?.map((e) => getObjetivoFirestoreData(e, true)).toList() ?? [];
