import '/flutter_flow/flutter_flow_util.dart';
import 'recibimiento_widget.dart' show RecibimientoWidget;
import 'package:flutter/material.dart';

class RecibimientoModel extends FlutterFlowModel<RecibimientoWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> selectedTrabajos = [];
  void addToSelectedTrabajos(DocumentReference item) =>
      selectedTrabajos.add(item);
  void removeFromSelectedTrabajos(DocumentReference item) =>
      selectedTrabajos.remove(item);
  void removeAtIndexFromSelectedTrabajos(int index) =>
      selectedTrabajos.removeAt(index);
  void insertAtIndexInSelectedTrabajos(int index, DocumentReference item) =>
      selectedTrabajos.insert(index, item);
  void updateSelectedTrabajosAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedTrabajos[index] = updateFn(selectedTrabajos[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
