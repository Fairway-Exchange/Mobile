import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'categories_dropdown_model.dart';
export 'categories_dropdown_model.dart';

class CategoriesDropdownWidget extends StatefulWidget {
  const CategoriesDropdownWidget({super.key});

  @override
  State<CategoriesDropdownWidget> createState() =>
      _CategoriesDropdownWidgetState();
}

class _CategoriesDropdownWidgetState extends State<CategoriesDropdownWidget> {
  late CategoriesDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesDropdownModel());

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
      height: 650.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).feGrey,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryText,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: FlutterFlowDropDown<String>(
                controller: _model.clubTypeValueController ??=
                    FormFieldController<String>(
                  _model.clubTypeValue ??= 'CLUB TYPE',
                ),
                options: const [
                  'Drivers',
                  'Hybrid',
                  'Iron',
                  'Fairway Woods',
                  'Wedge',
                  'Putter'
                ],
                onChanged: (val) =>
                    safeSetState(() => _model.clubTypeValue = val),
                width: 200.0,
                height: 60.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).alternate,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
                hintText: 'CLUB TYPE',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: Colors.transparent,
                borderWidth: 0.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                hidesUnderline: true,
                isOverButton: false,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: FlutterFlowDropDown<String>(
              controller: _model.brandValueController ??=
                  FormFieldController<String>(
                _model.brandValue ??= 'BRAND',
              ),
              options: const [
                'Callaway',
                'Mizuno',
                'TaylorMade',
                'Ping',
                'Titleist',
                'Cobra',
                'Puma',
                'Adidas',
                'TravisMathew',
                'Cleveland',
                'Wilson',
                'Srixon',
                'PXG',
                'Adams'
              ],
              onChanged: (val) => safeSetState(() => _model.brandValue = val),
              width: 200.0,
              height: 60.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).alternate,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
              hintText: 'BRAND',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: FlutterFlowDropDown<String>(
              controller: _model.modelValueController ??=
                  FormFieldController<String>(
                _model.modelValue ??= 'MODEL',
              ),
              options: const [
                'Callaway Mavrik',
                'TaylorMade SIM2',
                'Titleist TSi3',
                'Ping G425',
                'Cobra Speedzone'
              ],
              onChanged: (val) => safeSetState(() => _model.modelValue = val),
              width: 200.0,
              height: 60.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).alternate,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
              hintText: 'MODEL',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: FlutterFlowDropDown<String>(
              controller: _model.conditionValueController ??=
                  FormFieldController<String>(
                _model.conditionValue ??= 'CONDITION',
              ),
              options: const ['New', 'Excellent', 'Good', 'Fair'],
              onChanged: (val) =>
                  safeSetState(() => _model.conditionValue = val),
              width: 200.0,
              height: 60.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).alternate,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
              hintText: 'CONDITION',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: FlutterFlowDropDown<String>(
              controller: _model.handednessValueController ??=
                  FormFieldController<String>(
                _model.handednessValue ??= 'HANDEDNESS',
              ),
              options: const ['Left', 'Right'],
              onChanged: (val) =>
                  safeSetState(() => _model.handednessValue = val),
              width: 200.0,
              height: 60.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).alternate,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
              hintText: 'HANDEDNESS',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: FlutterFlowDropDown<String>(
              controller: _model.shaftValueController ??=
                  FormFieldController<String>(
                _model.shaftValue ??= 'SHAFT',
              ),
              options: const ['Premium', 'Standard'],
              onChanged: (val) => safeSetState(() => _model.shaftValue = val),
              width: 200.0,
              height: 60.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).alternate,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
              hintText: 'SHAFT',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: Colors.transparent,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryText,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: FlutterFlowDropDown<String>(
                controller: _model.shaftflexValueController ??=
                    FormFieldController<String>(
                  _model.shaftflexValue ??= 'SHAFT FLEX',
                ),
                options: const [
                  'Extra Stiff (X)',
                  'Stiff (S)',
                  'Regular (R)',
                  'Senior (A)',
                  'Ladies (L)'
                ],
                onChanged: (val) =>
                    safeSetState(() => _model.shaftflexValue = val),
                width: 200.0,
                height: 60.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).alternate,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
                hintText: 'SHAFT FLEX',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: Colors.transparent,
                borderWidth: 0.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                hidesUnderline: true,
                isOverButton: false,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
