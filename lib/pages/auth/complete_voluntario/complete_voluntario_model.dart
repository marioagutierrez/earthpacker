import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'complete_voluntario_widget.dart' show CompleteVoluntarioWidget;
import 'package:flutter/material.dart';

class CompleteVoluntarioModel
    extends FlutterFlowModel<CompleteVoluntarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for profesion widget.
  FocusNode? profesionFocusNode;
  TextEditingController? profesionTextController;
  String? Function(BuildContext, String?)? profesionTextControllerValidator;
  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for experiencia widget.
  FocusNode? experienciaFocusNode;
  TextEditingController? experienciaTextController;
  String? Function(BuildContext, String?)? experienciaTextControllerValidator;
  // State field(s) for participacion widget.
  FocusNode? participacionFocusNode;
  TextEditingController? participacionTextController;
  String? Function(BuildContext, String?)? participacionTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    profesionFocusNode?.dispose();
    profesionTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    experienciaFocusNode?.dispose();
    experienciaTextController?.dispose();

    participacionFocusNode?.dispose();
    participacionTextController?.dispose();
  }
}
