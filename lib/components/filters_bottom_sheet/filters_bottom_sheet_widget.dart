import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'filters_bottom_sheet_model.dart';
export 'filters_bottom_sheet_model.dart';

class FiltersBottomSheetWidget extends StatefulWidget {
  const FiltersBottomSheetWidget({super.key});

  @override
  State<FiltersBottomSheetWidget> createState() =>
      _FiltersBottomSheetWidgetState();
}

class _FiltersBottomSheetWidgetState extends State<FiltersBottomSheetWidget> {
  late FiltersBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FiltersBottomSheetModel());

    _model.brandsExpandableController =
        ExpandableController(initialExpanded: true);
    _model.clubTypeExpandableController =
        ExpandableController(initialExpanded: false);
    _model.shaftTypeExpandableController =
        ExpandableController(initialExpanded: false);
    _model.conditionExpandableController =
        ExpandableController(initialExpanded: false);
    _model.handednessExpandableController =
        ExpandableController(initialExpanded: false);
    _model.priceExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Drag_handle.png',
                        width: 32.0,
                        height: 4.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Filter by',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Divider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Container(
                  width: double.infinity,
                  color: const Color(0x00000000),
                  child: ExpandableNotifier(
                    controller: _model.brandsExpandableController,
                    child: ExpandablePanel(
                      header: Text(
                        'Brands',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      collapsed: Container(
                        decoration: const BoxDecoration(),
                      ),
                      expanded: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowChoiceChips(
                            options: const [
                              ChipData('All Brands'),
                              ChipData('Callaway'),
                              ChipData('Mizuno'),
                              ChipData('TaylorMade'),
                              ChipData('Ping'),
                              ChipData('Titleist'),
                              ChipData('Cobra'),
                              ChipData('Puma'),
                              ChipData('Adidas'),
                              ChipData('TravisMathew')
                            ],
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.choiceChipsValues1 = val);
                              FFAppState().brands = _model.choiceChipsValues1!
                                  .toList()
                                  .cast<String>();
                              _model.updatePage(() {});
                            },
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 16.0,
                            multiselect: true,
                            initialized: _model.choiceChipsValues1 != null,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController1 ??=
                                FormFieldController<List<String>>(
                              ['All Brands'],
                            ),
                            wrapped: true,
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: true,
                        tapBodyToCollapse: true,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down,
                        collapseIcon: Icons.keyboard_arrow_up,
                        iconSize: 20.0,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Container(
                  width: double.infinity,
                  color: const Color(0x00000000),
                  child: ExpandableNotifier(
                    controller: _model.clubTypeExpandableController,
                    child: ExpandablePanel(
                      header: Text(
                        'Club Type',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      collapsed: Container(
                        decoration: const BoxDecoration(),
                      ),
                      expanded: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowChoiceChips(
                            options: const [
                              ChipData('All Type'),
                              ChipData('Drivers'),
                              ChipData('Hybrid'),
                              ChipData('Fairway Woods'),
                              ChipData('Iron'),
                              ChipData('Drivers')
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.choiceChipsValues2 = val),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 8.0,
                            multiselect: true,
                            initialized: _model.choiceChipsValues2 != null,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController2 ??=
                                FormFieldController<List<String>>(
                              ['Hybrid', 'Fairway Woods'],
                            ),
                            wrapped: true,
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: true,
                        tapBodyToCollapse: true,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down,
                        collapseIcon: Icons.keyboard_arrow_up,
                        iconSize: 20.0,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Container(
                  width: double.infinity,
                  color: const Color(0x00000000),
                  child: ExpandableNotifier(
                    controller: _model.shaftTypeExpandableController,
                    child: ExpandablePanel(
                      header: Text(
                        'Shaft Type',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      collapsed: Container(
                        decoration: const BoxDecoration(),
                      ),
                      expanded: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowChoiceChips(
                            options: const [
                              ChipData('Premium'),
                              ChipData('Standard')
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.choiceChipsValues3 = val),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 8.0,
                            multiselect: true,
                            initialized: _model.choiceChipsValues3 != null,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController3 ??=
                                FormFieldController<List<String>>(
                              ['Standard'],
                            ),
                            wrapped: true,
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: true,
                        tapBodyToCollapse: true,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down,
                        collapseIcon: Icons.keyboard_arrow_up,
                        iconSize: 20.0,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Container(
                  width: double.infinity,
                  color: const Color(0x00000000),
                  child: ExpandableNotifier(
                    controller: _model.conditionExpandableController,
                    child: ExpandablePanel(
                      header: Text(
                        'Condition',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      collapsed: Container(
                        decoration: const BoxDecoration(),
                      ),
                      expanded: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowChoiceChips(
                            options: const [
                              ChipData('New'),
                              ChipData('Excellent'),
                              ChipData('Good'),
                              ChipData('Fair')
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.choiceChipsValues4 = val),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 8.0,
                            multiselect: true,
                            initialized: _model.choiceChipsValues4 != null,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController4 ??=
                                FormFieldController<List<String>>(
                              ['Excellent'],
                            ),
                            wrapped: true,
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: true,
                        tapBodyToCollapse: true,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down,
                        collapseIcon: Icons.keyboard_arrow_up,
                        iconSize: 20.0,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Container(
                  width: double.infinity,
                  color: const Color(0x00000000),
                  child: ExpandableNotifier(
                    controller: _model.handednessExpandableController,
                    child: ExpandablePanel(
                      header: Text(
                        'Handedness',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      collapsed: Container(
                        decoration: const BoxDecoration(),
                      ),
                      expanded: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowChoiceChips(
                            options: const [ChipData('Left'), ChipData('Right')],
                            onChanged: (val) => safeSetState(
                                () => _model.choiceChipsValues5 = val),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 8.0,
                            multiselect: true,
                            initialized: _model.choiceChipsValues5 != null,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController5 ??=
                                FormFieldController<List<String>>(
                              ['Right'],
                            ),
                            wrapped: true,
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: true,
                        tapBodyToCollapse: true,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down,
                        collapseIcon: Icons.keyboard_arrow_up,
                        iconSize: 20.0,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Container(
                  width: double.infinity,
                  color: const Color(0x00000000),
                  child: ExpandableNotifier(
                    controller: _model.priceExpandableController,
                    child: ExpandablePanel(
                      header: Text(
                        'Price',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      collapsed: Container(
                        decoration: const BoxDecoration(),
                      ),
                      expanded: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Slider(
                            activeColor: FlutterFlowTheme.of(context).primary,
                            inactiveColor:
                                FlutterFlowTheme.of(context).alternate,
                            min: 0.0,
                            max: 500.0,
                            value: _model.sliderValue ??= 100.0,
                            label: _model.sliderValue?.toStringAsFixed(2),
                            divisions: 100,
                            onChanged: (newValue) {
                              newValue =
                                  double.parse(newValue.toStringAsFixed(2));
                              safeSetState(() => _model.sliderValue = newValue);
                            },
                          ),
                        ],
                      ),
                      theme: ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: true,
                        tapBodyToCollapse: true,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                        expandIcon: Icons.keyboard_arrow_down,
                        collapseIcon: Icons.keyboard_arrow_up,
                        iconSize: 20.0,
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Apply Filters',
                    options: FFButtonOptions(
                      width: 342.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ],
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
