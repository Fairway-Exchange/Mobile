import '/components/product_card/product_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'buyer_success_page_widget.dart' show BuyerSuccessPageWidget;
import 'package:flutter/material.dart';

class BuyerSuccessPageModel extends FlutterFlowModel<BuyerSuccessPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for productCard component.
  late ProductCardModel productCardModel;

  @override
  void initState(BuildContext context) {
    productCardModel = createModel(context, () => ProductCardModel());
  }

  @override
  void dispose() {
    productCardModel.dispose();
  }
}
