import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_a_listing2_widget.dart' show AddAListing2Widget;
import 'package:flutter/material.dart';

class AddAListing2Model extends FlutterFlowModel<AddAListing2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for loft widget.
  String? loftValue;
  FormFieldController<String>? loftValueController;
  // State field(s) for bounce widget.
  String? bounceValue;
  FormFieldController<String>? bounceValueController;
  // State field(s) for listingPrice widget.
  FocusNode? listingPriceFocusNode;
  TextEditingController? listingPriceTextController;
  String? Function(BuildContext, String?)? listingPriceTextControllerValidator;
  String? _listingPriceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    listingPriceTextControllerValidator = _listingPriceTextControllerValidator;
  }

  @override
  void dispose() {
    listingPriceFocusNode?.dispose();
    listingPriceTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();
  }
}
