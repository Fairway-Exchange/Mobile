import '/backend/api_requests/api_calls.dart';
import '/components/termsandprivacy/termsandprivacy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_page_t2_widget.dart' show SignUpPageT2Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpPageT2Model extends FlutterFlowModel<SignUpPageT2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Fname widget.
  FocusNode? fnameFocusNode;
  TextEditingController? fnameTextController;
  String? Function(BuildContext, String?)? fnameTextControllerValidator;
  // State field(s) for Lname widget.
  FocusNode? lnameFocusNode;
  TextEditingController? lnameTextController;
  String? Function(BuildContext, String?)? lnameTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '+1 (###) ###-##-##');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for birthday widget.
  FocusNode? birthdayFocusNode;
  TextEditingController? birthdayTextController;
  String? Function(BuildContext, String?)? birthdayTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create Customer)] action in Button widget.
  ApiCallResponse? createCustomer;
  // Model for termsandprivacy component.
  late TermsandprivacyModel termsandprivacyModel;

  @override
  void initState(BuildContext context) {
    termsandprivacyModel = createModel(context, () => TermsandprivacyModel());
  }

  @override
  void dispose() {
    fnameFocusNode?.dispose();
    fnameTextController?.dispose();

    lnameFocusNode?.dispose();
    lnameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    birthdayFocusNode?.dispose();
    birthdayTextController?.dispose();

    termsandprivacyModel.dispose();
  }
}
