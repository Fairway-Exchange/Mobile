import '/backend/backend.dart';
import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/components/product_card_vertical/product_card_vertical_widget.dart';
import '/components/sort_filter/sort_filter_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'favorites_widget.dart' show FavoritesWidget;
import 'package:flutter/material.dart';

class FavoritesModel extends FlutterFlowModel<FavoritesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  List<ListingsRecord> simpleSearchResults = [];
  // Models for productCardVertical dynamic component.
  late FlutterFlowDynamicModels<ProductCardVerticalModel>
      productCardVerticalModels;
  // Model for sortFilter component.
  late SortFilterModel sortFilterModel;
  // Model for bottomNavBar component.
  late BottomNavBarModel bottomNavBarModel;

  @override
  void initState(BuildContext context) {
    productCardVerticalModels =
        FlutterFlowDynamicModels(() => ProductCardVerticalModel());
    sortFilterModel = createModel(context, () => SortFilterModel());
    bottomNavBarModel = createModel(context, () => BottomNavBarModel());
  }

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();

    productCardVerticalModels.dispose();
    sortFilterModel.dispose();
    bottomNavBarModel.dispose();
  }
}
