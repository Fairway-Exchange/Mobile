import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start EasyPost Group Code

class EasyPostGroup {
  static String getBaseUrl() => 'https://api.easypost.com/v2/';
  static Map<String, String> headers = {};
}

/// End EasyPost Group Code

/// Start Stripe Connect Group Code

class StripeConnectGroup {
  static String getBaseUrl() => 'https://api.stripe.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
    'Content-Type': 'application/x-www-form-urlencoded',
  };
  static CreateCustomerCall createCustomerCall = CreateCustomerCall();
  static UpdateCustomerCall updateCustomerCall = UpdateCustomerCall();
  static CreateAPaymentMethodCall createAPaymentMethodCall =
      CreateAPaymentMethodCall();
  static AttachAPaymentMethodToACustomerCall
      attachAPaymentMethodToACustomerCall =
      AttachAPaymentMethodToACustomerCall();
  static DetachAPaymentMethodFromACustomerCall
      detachAPaymentMethodFromACustomerCall =
      DetachAPaymentMethodFromACustomerCall();
  static ListACustomersPaymentMethodCall listACustomersPaymentMethodCall =
      ListACustomersPaymentMethodCall();
  static RetrieveAPaymentMethodCall retrieveAPaymentMethodCall =
      RetrieveAPaymentMethodCall();
  static CreateAPaymentIntentCall createAPaymentIntentCall =
      CreateAPaymentIntentCall();
  static RetrieveACustomerCall retrieveACustomerCall = RetrieveACustomerCall();
  static ConfirmAPaymentIntentCall confirmAPaymentIntentCall =
      ConfirmAPaymentIntentCall();
}

class CreateCustomerCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? phone = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create Customer',
      apiUrl: '$baseUrl/customers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'email': email,
        'phone': phone,
        'name': name,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? customerID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class UpdateCustomerCall {
  Future<ApiCallResponse> call({
    String? customerID = '',
    String? email = '',
    String? name = '',
    String? phone = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Update Customer',
      apiUrl: '$baseUrl/customers/$customerID',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'email': email,
        'name': name,
        'phone': phone,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAPaymentMethodCall {
  Future<ApiCallResponse> call({
    String? number = '',
    int? expMonth,
    int? expYear,
    String? cvc = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create a Payment Method',
      apiUrl: '$baseUrl/payment_methods',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'card[number]': number,
        'card[exp_month]': expMonth,
        'card[exp_year]': expYear,
        'card[cvc]': cvc,
        'type': "card",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AttachAPaymentMethodToACustomerCall {
  Future<ApiCallResponse> call({
    String? paymentMethodID = '',
    String? customer = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Attach a Payment Method to a Customer',
      apiUrl: '$baseUrl/payment_methods/$paymentMethodID/attach',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'customer': customer,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DetachAPaymentMethodFromACustomerCall {
  Future<ApiCallResponse> call({
    String? paymentMethodID = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Detach a Payment Method from a Customer',
      apiUrl: '$baseUrl/payment_methods/$paymentMethodID/detach',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListACustomersPaymentMethodCall {
  Future<ApiCallResponse> call({
    String? customerID = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List a Customers Payment Method',
      apiUrl: '$baseUrl/customers/$customerID/payment_methods',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveAPaymentMethodCall {
  Future<ApiCallResponse> call({
    String? paymentMethodID = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve a Payment Method',
      apiUrl: '$baseUrl/payment_methods/$paymentMethodID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAPaymentIntentCall {
  Future<ApiCallResponse> call({
    int? amount,
    int? transferAmount,
    String? productId = '',
    String? destination = '',
    String? customerID = '',
    String? paymentMethod = '',
    String? receiptEmail = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Create a Payment Intent',
      apiUrl: '$baseUrl/payment_intents',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'amount': amount,
        'transfer_data[amount]': transferAmount,
        'metadata[product_id]': productId,
        'capture_method': "automatic",
        'transfer_data[destination]': destination,
        'customer': customerID,
        'payment_method': paymentMethod,
        'currency': "USD",
        'receipt_email': receiptEmail,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveACustomerCall {
  Future<ApiCallResponse> call({
    String? customerID = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve a Customer',
      apiUrl: '$baseUrl/customers/$customerID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmAPaymentIntentCall {
  Future<ApiCallResponse> call({
    String? paymentIntentID = '',
    String? paymentMethod = '',
  }) async {
    final baseUrl = StripeConnectGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Confirm a PaymentIntent',
      apiUrl: '$baseUrl/payment_intents/$paymentIntentID/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51Ps86cG5JZDGZYXLzhZC2OoT8UMf8e5Ico2rYcFxeuFn5sXybur7aOiLRU3vMEVGxz16SF0xDtEx8Pgr04m6o0cK00ucfIDKbR',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'payment_method': paymentMethod,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Stripe Connect Group Code

class ResetPasswordCall {
  static Future<ApiCallResponse> call({
    String? oobCode = '',
    String? newPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "oobCode": "$oobCode",
  "newPassword": "$newPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset Password',
      apiUrl:
          'https://identitytoolkit.googleapis.com/v1/accounts:resetPassword?key=AIzaSyB2jA_s7z89xfIpudTVTkBhyuTBqeuzqZY',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
