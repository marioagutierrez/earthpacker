import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_experiencia_widget.dart' show AddExperienciaWidget;
import 'package:flutter/material.dart';

class AddExperienciaModel extends FlutterFlowModel<AddExperienciaWidget> {
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

  int? catSelected;

  CuotaextraStruct? cuotaextra;
  void updateCuotaextraStruct(Function(CuotaextraStruct) updateFn) {
    updateFn(cuotaextra ??= CuotaextraStruct());
  }

  DocumentReference? catSelectedRef;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  bool isDataUploading_uploadDataKigl = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataKigl = [];
  List<String> uploadedFileUrls_uploadDataKigl = [];

  // Stores action output result for [Bottom Sheet - otogramientos] action in IconButton widget.
  List<DocumentReference>? callback;
  // Stores action output result for [Bottom Sheet - recibimiento] action in IconButton widget.
  List<DocumentReference>? callback2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // State field(s) for Checkbox widget.
  bool? checkboxValue9;
  // State field(s) for Checkbox widget.
  bool? checkboxValue10;
  // State field(s) for Checkbox widget.
  bool? checkboxValue11;
  // State field(s) for Checkbox widget.
  bool? checkboxValue12;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for reqCuota widget.
  bool? reqCuotaValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue13;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;

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

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();
  }
}
