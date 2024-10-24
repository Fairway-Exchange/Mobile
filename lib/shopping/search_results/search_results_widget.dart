import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/components/guest_user_prompt_widget.dart';
import '/components/no_result_search/no_result_search_widget.dart';
import '/components/product_card/product_card_widget.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/sort_filter/sort_filter_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'search_results_model.dart';
export 'search_results_model.dart';

class SearchResultsWidget extends StatefulWidget {
  const SearchResultsWidget({super.key});

  @override
  State<SearchResultsWidget> createState() => _SearchResultsWidgetState();
}

class _SearchResultsWidgetState extends State<SearchResultsWidget> {
  late SearchResultsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchResultsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().searchInSearchPage = false;
      safeSetState(() {});
    });

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
    context.watch<FFAppState>();

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
              Builder(
                builder: (context) => InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (currentUserEmail != '') {
                      await showDialog(
                        barrierColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: const AlignmentDirectional(-1.0, -1.0)
                                .resolve(Directionality.of(context)),
                            child: GestureDetector(
                              onTap: () =>
                                  FocusScope.of(dialogContext).unfocus(),
                              child: SizedBox(
                                height: double.infinity,
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                child: const SidebarWidget(),
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                child: const GuestUserPromptWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    }
                  },
                  child: Icon(
                    Icons.menu,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 35.0,
                  ),
                ),
              ),
              Icon(
                FFIcons.kshapeCicrle,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 32.0,
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
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 10.0),
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
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
                                            FFAppState().searchInSearchPage =
                                                true;
                                            safeSetState(() {});
                                            await queryListingsRecordOnce()
                                                .then(
                                                  (records) => _model
                                                          .simpleSearchResults =
                                                      TextSearch(
                                                    records
                                                        .map(
                                                          (record) =>
                                                              TextSearchItem
                                                                  .fromTerms(
                                                                      record, [
                                                            record.clubType,
                                                            record.modelName,
                                                            record.shaft,
                                                            record.condition,
                                                            record.handedness,
                                                            record.brand,
                                                            record.loft,
                                                            record.bounce,
                                                            record.city,
                                                            record.state,
                                                            record.shaftType
                                                          ]),
                                                        )
                                                        .toList(),
                                                  )
                                                          .search(_model
                                                              .searchTextController
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList(),
                                                )
                                                .onError((_, __) => _model
                                                    .simpleSearchResults = [])
                                                .whenComplete(
                                                    () => safeSetState(() {}));
                                          },
                                        ),
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Search',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
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
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        validator: _model
                                            .searchTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        safeSetState(() {
                                          _model.searchTextController?.clear();
                                        });

                                        context.pushNamed(
                                          'SearchResults',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 5),
                                            ),
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (FFAppState().searchInSearchPage == true) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 20.0, 16.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final searchItems = _model
                                            .simpleSearchResults
                                            .map((e) => e)
                                            .toList();
                                        if (searchItems.isEmpty) {
                                          return NoResultSearchWidget(
                                            serachText: _model
                                                .searchTextController.text,
                                          );
                                        }

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: searchItems.length,
                                          itemBuilder:
                                              (context, searchItemsIndex) {
                                            final searchItemsItem =
                                                searchItems[searchItemsIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (searchItemsItem
                                                          .sellerRef ==
                                                      currentUserReference) {
                                                    context.pushNamed(
                                                      'AddAListing3',
                                                      queryParameters: {
                                                        'listing':
                                                            serializeParam(
                                                          searchItemsItem,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'listing':
                                                            searchItemsItem,
                                                      },
                                                    );
                                                  } else {
                                                    context.pushNamed(
                                                      'ItemDetailsPage',
                                                      queryParameters: {
                                                        'itemDoc':
                                                            serializeParam(
                                                          searchItemsItem,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'itemDoc':
                                                            searchItemsItem,
                                                      },
                                                    );
                                                  }
                                                },
                                                child: ProductCardWidget(
                                                  key: Key(
                                                      'Keyg7o_${searchItemsIndex}_of_${searchItems.length}'),
                                                  listingItem: searchItemsItem,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                StreamBuilder<List<ListingsRecord>>(
                                  stream: queryListingsRecord(
                                    queryBuilder: (listingsRecord) =>
                                        listingsRecord.orderBy('createdAt',
                                            descending: true),
                                  ),
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
                                    List<ListingsRecord>
                                        containerListingsRecordList =
                                        snapshot.data!;

                                    return Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 20.0, 16.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final initial =
                                                containerListingsRecordList
                                                    .map((e) => e)
                                                    .toList();
                                            if (initial.isEmpty) {
                                              return NoResultSearchWidget(
                                                serachText: _model
                                                    .searchTextController.text,
                                              );
                                            }

                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: initial.length,
                                              itemBuilder:
                                                  (context, initialIndex) {
                                                final initialItem =
                                                    initial[initialIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 5.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (initialItem
                                                              .sellerRef ==
                                                          currentUserReference) {
                                                        context.pushNamed(
                                                          'AddAListing3',
                                                          queryParameters: {
                                                            'listing':
                                                                serializeParam(
                                                              initialItem,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'listing':
                                                                initialItem,
                                                          },
                                                        );
                                                      } else {
                                                        context.pushNamed(
                                                          'ItemDetailsPage',
                                                          queryParameters: {
                                                            'itemDoc':
                                                                serializeParam(
                                                              initialItem,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'itemDoc':
                                                                initialItem,
                                                          },
                                                        );
                                                      }
                                                    },
                                                    child: ProductCardWidget(
                                                      key: Key(
                                                          'Keyzmu_${initialIndex}_of_${initial.length}'),
                                                      listingItem: initialItem,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
