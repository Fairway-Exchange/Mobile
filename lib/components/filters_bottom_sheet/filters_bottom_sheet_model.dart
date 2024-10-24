import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filters_bottom_sheet_widget.dart' show FiltersBottomSheetWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FiltersBottomSheetModel
    extends FlutterFlowModel<FiltersBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for brands widget.
  late ExpandableController brandsExpandableController;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  List<String>? get choiceChipsValues1 => choiceChipsValueController1?.value;
  set choiceChipsValues1(List<String>? val) =>
      choiceChipsValueController1?.value = val;
  // State field(s) for clubType widget.
  late ExpandableController clubTypeExpandableController;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  List<String>? get choiceChipsValues2 => choiceChipsValueController2?.value;
  set choiceChipsValues2(List<String>? val) =>
      choiceChipsValueController2?.value = val;
  // State field(s) for shaftType widget.
  late ExpandableController shaftTypeExpandableController;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  List<String>? get choiceChipsValues3 => choiceChipsValueController3?.value;
  set choiceChipsValues3(List<String>? val) =>
      choiceChipsValueController3?.value = val;
  // State field(s) for condition widget.
  late ExpandableController conditionExpandableController;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController4;
  List<String>? get choiceChipsValues4 => choiceChipsValueController4?.value;
  set choiceChipsValues4(List<String>? val) =>
      choiceChipsValueController4?.value = val;
  // State field(s) for handedness widget.
  late ExpandableController handednessExpandableController;

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController5;
  List<String>? get choiceChipsValues5 => choiceChipsValueController5?.value;
  set choiceChipsValues5(List<String>? val) =>
      choiceChipsValueController5?.value = val;
  // State field(s) for price widget.
  late ExpandableController priceExpandableController;

  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    brandsExpandableController.dispose();
    clubTypeExpandableController.dispose();
    shaftTypeExpandableController.dispose();
    conditionExpandableController.dispose();
    handednessExpandableController.dispose();
    priceExpandableController.dispose();
  }
}
