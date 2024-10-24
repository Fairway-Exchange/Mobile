import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/components/sort_filter/sort_filter_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listings_widget.dart' show ListingsWidget;
import 'package:flutter/material.dart';

class ListingsModel extends FlutterFlowModel<ListingsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for bottomNavBar component.
  late BottomNavBarModel bottomNavBarModel;
  // Model for sortFilter component.
  late SortFilterModel sortFilterModel;

  @override
  void initState(BuildContext context) {
    bottomNavBarModel = createModel(context, () => BottomNavBarModel());
    sortFilterModel = createModel(context, () => SortFilterModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    bottomNavBarModel.dispose();
    sortFilterModel.dispose();
  }
}
