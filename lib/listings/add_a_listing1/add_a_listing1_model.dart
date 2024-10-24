import '/backend/backend.dart';
import '/components/categories_dropdown/categories_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_a_listing1_widget.dart' show AddAListing1Widget;
import 'package:flutter/material.dart';

class AddAListing1Model extends FlutterFlowModel<AddAListing1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for categoriesDropdown component.
  late CategoriesDropdownModel categoriesDropdownModel;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ListingsRecord? createdListing;

  @override
  void initState(BuildContext context) {
    categoriesDropdownModel =
        createModel(context, () => CategoriesDropdownModel());
  }

  @override
  void dispose() {
    categoriesDropdownModel.dispose();
  }
}
