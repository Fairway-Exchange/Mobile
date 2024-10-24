import '/components/filters_bottom_sheet/filters_bottom_sheet_widget.dart';
import '/components/sort_by_sheet/sort_by_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sort_filter_model.dart';
export 'sort_filter_model.dart';

class SortFilterWidget extends StatefulWidget {
  const SortFilterWidget({super.key});

  @override
  State<SortFilterWidget> createState() => _SortFilterWidgetState();
}

class _SortFilterWidgetState extends State<SortFilterWidget> {
  late SortFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortFilterModel());

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
      width: 172.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryText,
        boxShadow: const [
          BoxShadow(
            blurRadius: 30.0,
            color: Color(0x0000000F),
            offset: Offset(
              0.0,
              8.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Builder(
              builder: (context) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        elevation: 0,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        alignment: const AlignmentDirectional(0.0, 1.0)
                            .resolve(Directionality.of(context)),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.7,
                          child: const SortBySheetWidget(),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.kfi9126004,
                        color: FlutterFlowTheme.of(context).info,
                        size: 20.0,
                      ),
                      Text(
                        'Sort',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
              child: VerticalDivider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).info,
              ),
            ),
            Builder(
              builder: (context) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        elevation: 0,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        alignment: const AlignmentDirectional(0.0, 1.0)
                            .resolve(Directionality.of(context)),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.8,
                          child: const FiltersBottomSheetWidget(),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.filter_list,
                        color: FlutterFlowTheme.of(context).info,
                        size: 20.0,
                      ),
                      Text(
                        'Filter',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).info,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
