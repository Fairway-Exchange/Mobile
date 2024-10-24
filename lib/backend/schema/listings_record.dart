import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingsRecord extends FirestoreRecord {
  ListingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "clubType" field.
  String? _clubType;
  String get clubType => _clubType ?? '';
  bool hasClubType() => _clubType != null;

  // "modelName" field.
  String? _modelName;
  String get modelName => _modelName ?? '';
  bool hasModelName() => _modelName != null;

  // "shaft" field.
  String? _shaft;
  String get shaft => _shaft ?? '';
  bool hasShaft() => _shaft != null;

  // "shaftType" field.
  String? _shaftType;
  String get shaftType => _shaftType ?? '';
  bool hasShaftType() => _shaftType != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "handedness" field.
  String? _handedness;
  String get handedness => _handedness ?? '';
  bool hasHandedness() => _handedness != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "viewCount" field.
  int? _viewCount;
  int get viewCount => _viewCount ?? 0;
  bool hasViewCount() => _viewCount != null;

  // "favoriteCount" field.
  int? _favoriteCount;
  int get favoriteCount => _favoriteCount ?? 0;
  bool hasFavoriteCount() => _favoriteCount != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "latLong" field.
  LatLng? _latLong;
  LatLng? get latLong => _latLong;
  bool hasLatLong() => _latLong != null;

  // "sellerRef" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  // "productImages" field.
  List<String>? _productImages;
  List<String> get productImages => _productImages ?? const [];
  bool hasProductImages() => _productImages != null;

  // "loft" field.
  String? _loft;
  String get loft => _loft ?? '';
  bool hasLoft() => _loft != null;

  // "bounce" field.
  String? _bounce;
  String get bounce => _bounce ?? '';
  bool hasBounce() => _bounce != null;

  // "lowestPrice" field.
  double? _lowestPrice;
  double get lowestPrice => _lowestPrice ?? 0.0;
  bool hasLowestPrice() => _lowestPrice != null;

  // "shippingFee" field.
  double? _shippingFee;
  double get shippingFee => _shippingFee ?? 0.0;
  bool hasShippingFee() => _shippingFee != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "payment_intent" field.
  String? _paymentIntent;
  String get paymentIntent => _paymentIntent ?? '';
  bool hasPaymentIntent() => _paymentIntent != null;

  void _initializeFields() {
    _clubType = snapshotData['clubType'] as String?;
    _modelName = snapshotData['modelName'] as String?;
    _shaft = snapshotData['shaft'] as String?;
    _shaftType = snapshotData['shaftType'] as String?;
    _condition = snapshotData['condition'] as String?;
    _handedness = snapshotData['handedness'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _description = snapshotData['description'] as String?;
    _brand = snapshotData['brand'] as String?;
    _viewCount = castToType<int>(snapshotData['viewCount']);
    _favoriteCount = castToType<int>(snapshotData['favoriteCount']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _isActive = snapshotData['isActive'] as bool?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _latLong = snapshotData['latLong'] as LatLng?;
    _sellerRef = snapshotData['sellerRef'] as DocumentReference?;
    _productImages = getDataList(snapshotData['productImages']);
    _loft = snapshotData['loft'] as String?;
    _bounce = snapshotData['bounce'] as String?;
    _lowestPrice = castToType<double>(snapshotData['lowestPrice']);
    _shippingFee = castToType<double>(snapshotData['shippingFee']);
    _archived = snapshotData['archived'] as bool?;
    _paymentIntent = snapshotData['payment_intent'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listings');

  static Stream<ListingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListingsRecord.fromSnapshot(s));

  static Future<ListingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListingsRecord.fromSnapshot(s));

  static ListingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListingsRecord._(reference, mapFromFirestore(data));

  static ListingsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ListingsRecord.getDocumentFromData(
        {
          'clubType': snapshot.data['clubType'],
          'modelName': snapshot.data['modelName'],
          'shaft': snapshot.data['shaft'],
          'shaftType': snapshot.data['shaftType'],
          'condition': snapshot.data['condition'],
          'handedness': snapshot.data['handedness'],
          'price': convertAlgoliaParam(
            snapshot.data['price'],
            ParamType.double,
            false,
          ),
          'description': snapshot.data['description'],
          'brand': snapshot.data['brand'],
          'viewCount': convertAlgoliaParam(
            snapshot.data['viewCount'],
            ParamType.int,
            false,
          ),
          'favoriteCount': convertAlgoliaParam(
            snapshot.data['favoriteCount'],
            ParamType.int,
            false,
          ),
          'createdAt': convertAlgoliaParam(
            snapshot.data['createdAt'],
            ParamType.DateTime,
            false,
          ),
          'updatedAt': convertAlgoliaParam(
            snapshot.data['updatedAt'],
            ParamType.DateTime,
            false,
          ),
          'isActive': snapshot.data['isActive'],
          'city': snapshot.data['city'],
          'state': snapshot.data['state'],
          'latLong': convertAlgoliaParam(
            snapshot.data,
            ParamType.LatLng,
            false,
          ),
          'sellerRef': convertAlgoliaParam(
            snapshot.data['sellerRef'],
            ParamType.DocumentReference,
            false,
          ),
          'productImages': safeGet(
            () => snapshot.data['productImages'].toList(),
          ),
          'loft': snapshot.data['loft'],
          'bounce': snapshot.data['bounce'],
          'lowestPrice': convertAlgoliaParam(
            snapshot.data['lowestPrice'],
            ParamType.double,
            false,
          ),
          'shippingFee': convertAlgoliaParam(
            snapshot.data['shippingFee'],
            ParamType.double,
            false,
          ),
          'archived': snapshot.data['archived'],
          'payment_intent': snapshot.data['payment_intent'],
        },
        ListingsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ListingsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'listings',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ListingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListingsRecordData({
  String? clubType,
  String? modelName,
  String? shaft,
  String? shaftType,
  String? condition,
  String? handedness,
  double? price,
  String? description,
  String? brand,
  int? viewCount,
  int? favoriteCount,
  DateTime? createdAt,
  DateTime? updatedAt,
  bool? isActive,
  String? city,
  String? state,
  LatLng? latLong,
  DocumentReference? sellerRef,
  String? loft,
  String? bounce,
  double? lowestPrice,
  double? shippingFee,
  bool? archived,
  String? paymentIntent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clubType': clubType,
      'modelName': modelName,
      'shaft': shaft,
      'shaftType': shaftType,
      'condition': condition,
      'handedness': handedness,
      'price': price,
      'description': description,
      'brand': brand,
      'viewCount': viewCount,
      'favoriteCount': favoriteCount,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isActive': isActive,
      'city': city,
      'state': state,
      'latLong': latLong,
      'sellerRef': sellerRef,
      'loft': loft,
      'bounce': bounce,
      'lowestPrice': lowestPrice,
      'shippingFee': shippingFee,
      'archived': archived,
      'payment_intent': paymentIntent,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListingsRecordDocumentEquality implements Equality<ListingsRecord> {
  const ListingsRecordDocumentEquality();

  @override
  bool equals(ListingsRecord? e1, ListingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.clubType == e2?.clubType &&
        e1?.modelName == e2?.modelName &&
        e1?.shaft == e2?.shaft &&
        e1?.shaftType == e2?.shaftType &&
        e1?.condition == e2?.condition &&
        e1?.handedness == e2?.handedness &&
        e1?.price == e2?.price &&
        e1?.description == e2?.description &&
        e1?.brand == e2?.brand &&
        e1?.viewCount == e2?.viewCount &&
        e1?.favoriteCount == e2?.favoriteCount &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.isActive == e2?.isActive &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.latLong == e2?.latLong &&
        e1?.sellerRef == e2?.sellerRef &&
        listEquality.equals(e1?.productImages, e2?.productImages) &&
        e1?.loft == e2?.loft &&
        e1?.bounce == e2?.bounce &&
        e1?.lowestPrice == e2?.lowestPrice &&
        e1?.shippingFee == e2?.shippingFee &&
        e1?.archived == e2?.archived &&
        e1?.paymentIntent == e2?.paymentIntent;
  }

  @override
  int hash(ListingsRecord? e) => const ListEquality().hash([
        e?.clubType,
        e?.modelName,
        e?.shaft,
        e?.shaftType,
        e?.condition,
        e?.handedness,
        e?.price,
        e?.description,
        e?.brand,
        e?.viewCount,
        e?.favoriteCount,
        e?.createdAt,
        e?.updatedAt,
        e?.isActive,
        e?.city,
        e?.state,
        e?.latLong,
        e?.sellerRef,
        e?.productImages,
        e?.loft,
        e?.bounce,
        e?.lowestPrice,
        e?.shippingFee,
        e?.archived,
        e?.paymentIntent
      ]);

  @override
  bool isValidKey(Object? o) => o is ListingsRecord;
}
