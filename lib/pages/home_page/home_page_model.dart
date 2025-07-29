import '/componentes/account_aprove_alert/account_aprove_alert_widget.dart';
import '/componentes/experiencia_card/experiencia_card_widget.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DocumentReference? filtro;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for experiencia_card dynamic component.
  late FlutterFlowDynamicModels<ExperienciaCardModel> experienciaCardModels;
  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for account_aprove_alert component.
  late AccountAproveAlertModel accountAproveAlertModel;

  @override
  void initState(BuildContext context) {
    experienciaCardModels =
        FlutterFlowDynamicModels(() => ExperienciaCardModel());
    navbarModel = createModel(context, () => NavbarModel());
    accountAproveAlertModel =
        createModel(context, () => AccountAproveAlertModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    experienciaCardModels.dispose();
    navbarModel.dispose();
    accountAproveAlertModel.dispose();
  }
}
