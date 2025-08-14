import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataXqe = false;
  FFUploadedFile uploadedLocalFile_uploadDataXqe =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataXqe = '';

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Read Document] action in Switch widget.
  UsersRecord? location;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
