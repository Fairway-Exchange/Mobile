import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/categories_dropdown/categories_dropdown_widget.dart';
import '/components/image_options_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_a_listing1_model.dart';
export 'add_a_listing1_model.dart';

class AddAListing1Widget extends StatefulWidget {
  const AddAListing1Widget({super.key});

  @override
  State<AddAListing1Widget> createState() => _AddAListing1WidgetState();
}

class _AddAListing1WidgetState extends State<AddAListing1Widget> {
  late AddAListing1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddAListing1Model());

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
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                  FFAppState().productImages = [];
                  safeSetState(() {});
                },
                child: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
              ),
              Text(
                'New Listings',
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
        body: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Container(
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).feGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryText,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Builder(
                                builder: (context) {
                                  final uploadedFiles = FFAppState()
                                      .productImages
                                      .take(4)
                                      .toList();

                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:
                                        List.generate(uploadedFiles.length,
                                            (uploadedFilesIndex) {
                                      final uploadedFilesItem =
                                          uploadedFiles[uploadedFilesIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Container(
                                          width: 109.0,
                                          height: 109.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  uploadedFilesItem,
                                                  width: 109.0,
                                                  height: 109.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  () {
                                                    if (uploadedFilesIndex ==
                                                        0) {
                                                      return 'Front Image';
                                                    } else if (uploadedFilesIndex ==
                                                        1) {
                                                      return 'Back Image';
                                                    } else {
                                                      return 'Full Image';
                                                    }
                                                  }(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.8,
                                              child: const ImageOptionsWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                    child: Image.asset(
                                      'assets/images/add_button.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.categoriesDropdownModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const CategoriesDropdownWidget(),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.05),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.categoriesDropdownModel.clubTypeValue ==
                                null) {
                              return;
                            }
                            if (_model.categoriesDropdownModel.brandValue ==
                                null) {
                              return;
                            }
                            if (_model.categoriesDropdownModel.modelValue ==
                                null) {
                              return;
                            }
                            if (_model.categoriesDropdownModel.conditionValue ==
                                null) {
                              return;
                            }
                            if (_model
                                    .categoriesDropdownModel.handednessValue ==
                                null) {
                              return;
                            }
                            if (_model.categoriesDropdownModel.shaftValue ==
                                null) {
                              return;
                            }
                            if (_model.categoriesDropdownModel.shaftflexValue ==
                                null) {
                              return;
                            }

                            var listingsRecordReference =
                                ListingsRecord.collection.doc();
                            await listingsRecordReference.set({
                              ...createListingsRecordData(
                                clubType: _model
                                    .categoriesDropdownModel.clubTypeValue,
                                modelName:
                                    _model.categoriesDropdownModel.modelValue,
                                shaft:
                                    _model.categoriesDropdownModel.shaftValue,
                                shaftType: _model
                                    .categoriesDropdownModel.shaftflexValue,
                                condition: _model
                                    .categoriesDropdownModel.conditionValue,
                                handedness: _model
                                    .categoriesDropdownModel.handednessValue,
                                createdAt: getCurrentTimestamp,
                                sellerRef: currentUserReference,
                                archived: false,
                                isActive: true,
                                brand:
                                    _model.categoriesDropdownModel.brandValue,
                              ),
                              ...mapToFirestore(
                                {
                                  'productImages': FFAppState().productImages,
                                },
                              ),
                            });
                            _model.createdListing =
                                ListingsRecord.getDocumentFromData({
                              ...createListingsRecordData(
                                clubType: _model
                                    .categoriesDropdownModel.clubTypeValue,
                                modelName:
                                    _model.categoriesDropdownModel.modelValue,
                                shaft:
                                    _model.categoriesDropdownModel.shaftValue,
                                shaftType: _model
                                    .categoriesDropdownModel.shaftflexValue,
                                condition: _model
                                    .categoriesDropdownModel.conditionValue,
                                handedness: _model
                                    .categoriesDropdownModel.handednessValue,
                                createdAt: getCurrentTimestamp,
                                sellerRef: currentUserReference,
                                archived: false,
                                isActive: true,
                                brand:
                                    _model.categoriesDropdownModel.brandValue,
                              ),
                              ...mapToFirestore(
                                {
                                  'productImages': FFAppState().productImages,
                                },
                              ),
                            }, listingsRecordReference);
                            FFAppState().productImages = [];
                            safeSetState(() {});

                            context.pushNamed(
                              'AddAListing2',
                              queryParameters: {
                                'createdListing': serializeParam(
                                  _model.createdListing,
                                  ParamType.Document,
                                ),
                                'listingref': serializeParam(
                                  _model.createdListing?.reference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'createdListing': _model.createdListing,
                              },
                            );

                            safeSetState(() {});
                          },
                          text: 'Continue',
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
