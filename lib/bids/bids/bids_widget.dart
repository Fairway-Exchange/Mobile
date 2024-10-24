import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bid_card/bid_card_widget.dart';
import '/components/bottom_nav_bar/bottom_nav_bar_widget.dart';
import '/components/empty_bids_made/empty_bids_made_widget.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'bids_model.dart';
export 'bids_model.dart';

class BidsWidget extends StatefulWidget {
  const BidsWidget({super.key});

  @override
  State<BidsWidget> createState() => _BidsWidgetState();
}

class _BidsWidgetState extends State<BidsWidget> {
  late BidsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BidsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().sidebarSelectedItem = 'Bids';
      safeSetState(() {});
    });

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
                    await showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: const AlignmentDirectional(-1.0, -1.0)
                              .resolve(Directionality.of(context)),
                          child: GestureDetector(
                            onTap: () => FocusScope.of(dialogContext).unfocus(),
                            child: SizedBox(
                              height: double.infinity,
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              child: const SidebarWidget(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    Icons.menu,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 35.0,
                  ),
                ),
              ),
              Text(
                'Bids Made',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
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
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
              child: StreamBuilder<List<BidsRecord>>(
                stream: queryBidsRecord(
                  queryBuilder: (bidsRecord) => bidsRecord.where(
                    'bidderID',
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
                  List<BidsRecord> listViewBidsRecordList = snapshot.data!;
                  if (listViewBidsRecordList.isEmpty) {
                    return const EmptyBidsMadeWidget();
                  }

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewBidsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewBidsRecord =
                          listViewBidsRecordList[listViewIndex];
                      return Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: BidCardWidget(
                            key: Key(
                                'Keyzfu_${listViewIndex}_of_${listViewBidsRecordList.length}'),
                            bidItem: listViewBidsRecord,
                          ),
                        ),
                      );
                    },
                  );
                },
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
    );
  }
}
