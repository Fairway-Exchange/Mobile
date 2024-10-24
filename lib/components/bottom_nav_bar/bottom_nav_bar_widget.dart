import '/auth/firebase_auth/auth_util.dart';
import '/components/guest_user_prompt_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_bar_model.dart';
export 'bottom_nav_bar_model.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late BottomNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              -2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().sidebarSelectedItem = 'Home';
                safeSetState(() {});

                context.pushNamed('Home');
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.kfEIconHome,
                    color: FFAppState().sidebarSelectedItem == 'Home'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  Text(
                    'Home',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Open Sans',
                          color: FFAppState().sidebarSelectedItem == 'Home'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().sidebarSelectedItem = 'Search';
                safeSetState(() {});

                context.pushNamed('SearchResults');
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: FFAppState().sidebarSelectedItem == 'Search'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  Text(
                    'Search',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Open Sans',
                          color: FFAppState().sidebarSelectedItem == 'Search'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (currentUserEmail != '') {
                  FFAppState().sidebarSelectedItem = 'Listings';
                  safeSetState(() {});

                  context.goNamed('Listings');
                } else {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: const GuestUserPromptWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.kfEIconListing,
                    color: FFAppState().sidebarSelectedItem == 'Listings'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  Text(
                    'Listings',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Open Sans',
                          color: FFAppState().sidebarSelectedItem == 'Listings'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (currentUserEmail != '') {
                  FFAppState().sidebarSelectedItem = 'Bids';
                  safeSetState(() {});

                  context.goNamed('Bids');
                } else {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: const GuestUserPromptWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.kfEIconTrading,
                    color: FFAppState().sidebarSelectedItem == 'Bids'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  Text(
                    'Bids',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Open Sans',
                          color: FFAppState().sidebarSelectedItem == 'Bids'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (currentUserEmail != '') {
                  FFAppState().sidebarSelectedItem = 'Messages';
                  safeSetState(() {});

                  context.pushNamed('MessageList');
                } else {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: const GuestUserPromptWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.message_rounded,
                    color: FFAppState().sidebarSelectedItem == 'Messages'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  Text(
                    'Messages',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Open Sans',
                          color: FFAppState().sidebarSelectedItem == 'Messages'
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
