import '/flutter_flow/flutter_flow_util.dart';
import 'convesation_widget.dart' show ConvesationWidget;
import 'package:flutter/material.dart';

class ConvesationModel extends FlutterFlowModel<ConvesationWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataBau = false;
  FFUploadedFile uploadedLocalFile_uploadDataBau =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataBau = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
