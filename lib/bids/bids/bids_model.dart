import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bids_widget.dart' show BidsWidget;
import 'package:flutter/material.dart';

class BidsModel extends FlutterFlowModel<BidsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bottomNavBar component.
  late BottomNavBarModel bottomNavBarModel;

  @override
  void initState(BuildContext context) {
    bottomNavBarModel = createModel(context, () => BottomNavBarModel());
  }

  @override
  void dispose() {
    bottomNavBarModel.dispose();
  }
}
