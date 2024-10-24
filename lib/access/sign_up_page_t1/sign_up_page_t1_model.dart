import '/components/termsandprivacy/termsandprivacy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_page_t1_widget.dart' show SignUpPageT1Widget;
import 'package:flutter/material.dart';

class SignUpPageT1Model extends FlutterFlowModel<SignUpPageT1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // State field(s) for confPass widget.
  FocusNode? confPassFocusNode;
  TextEditingController? confPassTextController;
  late bool confPassVisibility;
  String? Function(BuildContext, String?)? confPassTextControllerValidator;
  // Model for termsandprivacy component.
  late TermsandprivacyModel termsandprivacyModel;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    confPassVisibility = false;
    termsandprivacyModel = createModel(context, () => TermsandprivacyModel());
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    confPassFocusNode?.dispose();
    confPassTextController?.dispose();

    termsandprivacyModel.dispose();
  }
}
