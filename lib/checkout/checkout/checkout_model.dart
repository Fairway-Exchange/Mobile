import '/components/product_card/product_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for productCard component.
  late ProductCardModel productCardModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for FULLNAME widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;
  // State field(s) for PHONE widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  final phoneMask = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for ADDRESS1 widget.
  FocusNode? address1FocusNode;
  TextEditingController? address1TextController;
  String? Function(BuildContext, String?)? address1TextControllerValidator;
  // State field(s) for ADDRESS2 widget.
  FocusNode? address2FocusNode;
  TextEditingController? address2TextController;
  String? Function(BuildContext, String?)? address2TextControllerValidator;
  // State field(s) for CITY widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for STATE widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for ZIP widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipTextController;
  String? Function(BuildContext, String?)? zipTextControllerValidator;

  @override
  void initState(BuildContext context) {
    productCardModel = createModel(context, () => ProductCardModel());
  }

  @override
  void dispose() {
    productCardModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    address1FocusNode?.dispose();
    address1TextController?.dispose();

    address2FocusNode?.dispose();
    address2TextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    zipFocusNode?.dispose();
    zipTextController?.dispose();
  }
}
