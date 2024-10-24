import '/flutter_flow/flutter_flow_util.dart';
import 'set_password_page02_widget.dart' show SetPasswordPage02Widget;
import 'package:flutter/material.dart';

class SetPasswordPage02Model extends FlutterFlowModel<SetPasswordPage02Widget> {
  ///  State fields for stateful widgets in this page.

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
