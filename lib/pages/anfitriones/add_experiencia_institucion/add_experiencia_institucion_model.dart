import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_experiencia_institucion_widget.dart'
    show AddExperienciaInstitucionWidget;
import 'package:flutter/material.dart';

class AddExperienciaInstitucionModel
    extends FlutterFlowModel<AddExperienciaInstitucionWidget> {
  ///  Local state fields for this page.

  String? imageSelected;

  List<OtorgamientosRecord> otorgamientos = [];
  void addToOtorgamientos(OtorgamientosRecord item) => otorgamientos.add(item);
  void removeFromOtorgamientos(OtorgamientosRecord item) =>
      otorgamientos.remove(item);
  void removeAtIndexFromOtorgamientos(int index) =>
      otorgamientos.removeAt(index);
  void insertAtIndexInOtorgamientos(int index, OtorgamientosRecord item) =>
      otorgamientos.insert(index, item);
  void updateOtorgamientosAtIndex(
          int index, Function(OtorgamientosRecord) updateFn) =>
      otorgamientos[index] = updateFn(otorgamientos[index]);

  List<TrabajosRecord> trabajos = [];
  void addToTrabajos(TrabajosRecord item) => trabajos.add(item);
  void removeFromTrabajos(TrabajosRecord item) => trabajos.remove(item);
  void removeAtIndexFromTrabajos(int index) => trabajos.removeAt(index);
  void insertAtIndexInTrabajos(int index, TrabajosRecord item) =>
      trabajos.insert(index, item);
  void updateTrabajosAtIndex(int index, Function(TrabajosRecord) updateFn) =>
      trabajos[index] = updateFn(trabajos[index]);

  List<String> requisitos = [];
  void addToRequisitos(String item) => requisitos.add(item);
  void removeFromRequisitos(String item) => requisitos.remove(item);
  void removeAtIndexFromRequisitos(int index) => requisitos.removeAt(index);
  void insertAtIndexInRequisitos(int index, String item) =>
      requisitos.insert(index, item);
  void updateRequisitosAtIndex(int index, Function(String) updateFn) =>
      requisitos[index] = updateFn(requisitos[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  bool isDataUploading_uploadDataKig = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataKig = [];
  List<String> uploadedFileUrls_uploadDataKig = [];

  // Stores action output result for [Bottom Sheet - otogramientos] action in IconButton widget.
  List<DocumentReference>? callback;
  // Stores action output result for [Bottom Sheet - recibimiento] action in IconButton widget.
  List<DocumentReference>? callback2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
