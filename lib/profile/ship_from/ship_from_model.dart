import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ship_from_widget.dart' show ShipFromWidget;
import 'package:flutter/material.dart';

class ShipFromModel extends FlutterFlowModel<ShipFromWidget> {
  ///  State fields for stateful widgets in this page.

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
  // State field(s) for State widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  // State field(s) for POSTALCODE widget.
  FocusNode? postalcodeFocusNode;
  TextEditingController? postalcodeTextController;
  String? Function(BuildContext, String?)? postalcodeTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    address1FocusNode?.dispose();
    address1TextController?.dispose();

    address2FocusNode?.dispose();
    address2TextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    postalcodeFocusNode?.dispose();
    postalcodeTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
