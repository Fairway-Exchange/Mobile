import '/backend/backend.dart';
import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/components/sort_filter/sort_filter_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_results_widget.dart' show SearchResultsWidget;
import 'package:flutter/material.dart';

class SearchResultsModel extends FlutterFlowModel<SearchResultsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  List<ListingsRecord> simpleSearchResults = [];
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
    searchFocusNode?.dispose();
    searchTextController?.dispose();

    bottomNavBarModel.dispose();
    sortFilterModel.dispose();
  }
}
