import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).primary,
          child: Center(
            child: Image.asset(
              'assets/images/logoNew.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.contain,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'SplashPage': ParameterData.none(),
  'AccessPage': ParameterData.none(),
  'SignInPage': ParameterData.none(),
  'ForgotPasswordPage': ParameterData.none(),
  'SetPasswordPage01': ParameterData.none(),
  'SetPasswordPage02': (data) async => ParameterData(
        allParams: {
          'oobCode': getParameter<String>(data, 'oobCode'),
        },
      ),
  'SignUpPageT1': ParameterData.none(),
  'SignUpPageT2': ParameterData.none(),
  'Home': ParameterData.none(),
  'SearchResults': ParameterData.none(),
  'ItemDetailsPage': (data) async => ParameterData(
        allParams: {
          'itemDoc': await getDocumentParameter<ListingsRecord>(
              data, 'itemDoc', ListingsRecord.fromSnapshot),
        },
      ),
  'Listings': ParameterData.none(),
  'Bids': ParameterData.none(),
  'BidsDetails': ParameterData.none(),
  'AddAListing1': ParameterData.none(),
  'AddAListing2': (data) async => ParameterData(
        allParams: {
          'createdListing': await getDocumentParameter<ListingsRecord>(
              data, 'createdListing', ListingsRecord.fromSnapshot),
          'listingref': getParameter<DocumentReference>(data, 'listingref'),
        },
      ),
  'AddAListing3': (data) async => ParameterData(
        allParams: {
          'listing': await getDocumentParameter<ListingsRecord>(
              data, 'listing', ListingsRecord.fromSnapshot),
        },
      ),
  'Checkout': (data) async => ParameterData(
        allParams: {
          'listing': await getDocumentParameter<ListingsRecord>(
              data, 'listing', ListingsRecord.fromSnapshot),
        },
      ),
  'BuyerSuccessPage': (data) async => ParameterData(
        allParams: {
          'listing': await getDocumentParameter<ListingsRecord>(
              data, 'listing', ListingsRecord.fromSnapshot),
        },
      ),
  'SellerOrderDetails': (data) async => ParameterData(
        allParams: {
          'listing': await getDocumentParameter<ListingsRecord>(
              data, 'listing', ListingsRecord.fromSnapshot),
        },
      ),
  'MessageList': ParameterData.none(),
  'ShipTo': ParameterData.none(),
  'Favorites': ParameterData.none(),
  'Purchases': (data) async => ParameterData(
        allParams: {
          'searchWord': getParameter<String>(data, 'searchWord'),
        },
      ),
  'ShipFrom': ParameterData.none(),
  'ProfileDetailsAunteticated': ParameterData.none(),
  'SplashPageCopy': ParameterData.none(),
  'ProfileDetailsOthers': (data) async => ParameterData(
        allParams: {
          'user': await getDocumentParameter<UserRecord>(
              data, 'user', UserRecord.fromSnapshot),
        },
      ),
  'editProfile': ParameterData.none(),
  'editProfileAddCard': ParameterData.none(),
  'editProfilePayment': ParameterData.none(),
  'SupportPage': ParameterData.none(),
  'notifications': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
