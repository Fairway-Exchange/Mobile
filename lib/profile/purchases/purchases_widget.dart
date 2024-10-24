import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/components/product_card_vertical/product_card_vertical_widget.dart';
import '/components/sort_filter/sort_filter_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:text_search/text_search.dart';
import 'purchases_model.dart';
export 'purchases_model.dart';

class PurchasesWidget extends StatefulWidget {
  const PurchasesWidget({
    super.key,
    this.searchWord,
  });

  final String? searchWord;

  @override
  State<PurchasesWidget> createState() => _PurchasesWidgetState();
}

class _PurchasesWidgetState extends State<PurchasesWidget> {
  late PurchasesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PurchasesModel());

    _model.searchTextController ??= TextEditingController();
    _model.searchFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
              ),
              Text(
                'Purchases',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('notifications');
                },
                child: Icon(
                  Icons.notifications_none,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 36.0,
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 1.0,
        ),
        body: SizedBox(
          height: MediaQuery.sizeOf(context).height * 1.0,
          child: Stack(
            children: [
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 5.0),
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.search_sharp,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.searchTextController,
                                focusNode: _model.searchFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.searchTextController',
                                  const Duration(milliseconds: 2000),
                                  () async {
                                    await queryListingsRecordOnce()
                                        .then(
                                          (records) => _model
                                              .simpleSearchResults = TextSearch(
                                            records
                                                .map(
                                                  (record) =>
                                                      TextSearchItem.fromTerms(
                                                          record,
                                                          [record.clubType]),
                                                )
                                                .toList(),
                                          )
                                              .search(widget.searchWord !=
                                                          null &&
                                                      widget.searchWord != ''
                                                  ? widget.searchWord!
                                                  : _model.searchTextController
                                                      .text)
                                              .map((r) => r.object)
                                              .toList(),
                                        )
                                        .onError((_, __) =>
                                            _model.simpleSearchResults = [])
                                        .whenComplete(
                                            () => safeSetState(() {}));
                                  },
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Search',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                validator: _model.searchTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 80.0, 16.0, 0.0),
                  child: StreamBuilder<List<FavoritesRecord>>(
                    stream: queryFavoritesRecord(
                      queryBuilder: (favoritesRecord) => favoritesRecord.where(
                        'userId',
                        isEqualTo: currentUserReference,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                          ),
                        );
                      }
                      List<FavoritesRecord> staggeredViewFavoritesRecordList =
                          snapshot.data!;

                      return MasonryGridView.builder(
                        gridDelegate:
                            const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        itemCount: staggeredViewFavoritesRecordList.length,
                        itemBuilder: (context, staggeredViewIndex) {
                          final staggeredViewFavoritesRecord =
                              staggeredViewFavoritesRecordList[
                                  staggeredViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: StreamBuilder<ListingsRecord>(
                              stream: ListingsRecord.getDocument(
                                  staggeredViewFavoritesRecord.listingId!),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                    ),
                                  );
                                }

                                final productCardVerticalListingsRecord =
                                    snapshot.data!;

                                return wrapWithModel(
                                  model:
                                      _model.productCardVerticalModels.getModel(
                                    productCardVerticalListingsRecord
                                        .reference.id,
                                    staggeredViewIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProductCardVerticalWidget(
                                    key: Key(
                                      'Keydjs_${productCardVerticalListingsRecord.reference.id}',
                                    ),
                                    listingsItem:
                                        productCardVerticalListingsRecord,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                  child: wrapWithModel(
                    model: _model.sortFilterModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const SortFilterWidget(),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.bottomNavBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const BottomNavBarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
