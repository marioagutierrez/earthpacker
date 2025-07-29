import '/flutter_flow/flutter_flow_util.dart';
import 'publicacion_widget.dart' show PublicacionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PublicacionModel extends FlutterFlowModel<PublicacionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
