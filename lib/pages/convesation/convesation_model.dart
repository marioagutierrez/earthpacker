import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'convesation_widget.dart' show ConvesationWidget;
import 'package:flutter/material.dart';

class ConvesationModel extends FlutterFlowModel<ConvesationWidget> {
  ///  Local state fields for this page.

  String? lastmsg;

  ///  State fields for stateful widgets in this page.

  // State field(s) for messages_list widget.
  ScrollController? messagesList;
  List<ChatMessageRecord>? messagesListPreviousSnapshot;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Send widget.
  ChatMessageRecord? createdMessage;

  @override
  void initState(BuildContext context) {
    messagesList = ScrollController();
  }

  @override
  void dispose() {
    messagesList?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
