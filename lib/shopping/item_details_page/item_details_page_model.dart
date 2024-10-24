import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'item_details_page_widget.dart' show ItemDetailsPageWidget;
import 'package:flutter/material.dart';

class ItemDetailsPageModel extends FlutterFlowModel<ItemDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for condition widget.
  List<String>? conditionValue;
  FormFieldController<List<String>>? conditionValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
