import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "profileImageUrl" field.
  String? _profileImageUrl;
  String get profileImageUrl => _profileImageUrl ?? '';
  bool hasProfileImageUrl() => _profileImageUrl != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "isVerified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "lastLoginAt" field.
  DateTime? _lastLoginAt;
  DateTime? get lastLoginAt => _lastLoginAt;
  bool hasLastLoginAt() => _lastLoginAt != null;

  // "sellerRating" field.
  double? _sellerRating;
  double get sellerRating => _sellerRating ?? 0.0;
  bool hasSellerRating() => _sellerRating != null;

  // "buyerRating" field.
  double? _buyerRating;
  double get buyerRating => _buyerRating ?? 0.0;
  bool hasBuyerRating() => _buyerRating != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  bool hasDob() => _dob != null;

  // "stripe_payment_method" field.
  String? _stripePaymentMethod;
  String get stripePaymentMethod => _stripePaymentMethod ?? '';
  bool hasStripePaymentMethod() => _stripePaymentMethod != null;

  // "stripe_customer_id" field.
  String? _stripeCustomerId;
  String get stripeCustomerId => _stripeCustomerId ?? '';
  bool hasStripeCustomerId() => _stripeCustomerId != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "cover_photo" field.
  String? _coverPhoto;
  String get coverPhoto => _coverPhoto ?? '';
  bool hasCoverPhoto() => _coverPhoto != null;

  // "isSeller" field.
  bool? _isSeller;
  bool get isSeller => _isSeller ?? false;
  bool hasIsSeller() => _isSeller != null;

  // "isBuyer" field.
  bool? _isBuyer;
  bool get isBuyer => _isBuyer ?? false;
  bool hasIsBuyer() => _isBuyer != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _profileImageUrl = snapshotData['profileImageUrl'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _isVerified = snapshotData['isVerified'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _lastLoginAt = snapshotData['lastLoginAt'] as DateTime?;
    _sellerRating = castToType<double>(snapshotData['sellerRating']);
    _buyerRating = castToType<double>(snapshotData['buyerRating']);
    _uid = snapshotData['uid'] as String?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dob = snapshotData['dob'] as String?;
    _stripePaymentMethod = snapshotData['stripe_payment_method'] as String?;
    _stripeCustomerId = snapshotData['stripe_customer_id'] as String?;
    _about = snapshotData['about'] as String?;
    _coverPhoto = snapshotData['cover_photo'] as String?;
    _isSeller = snapshotData['isSeller'] as bool?;
    _isBuyer = snapshotData['isBuyer'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? firstName,
  String? lastName,
  String? profileImageUrl,
  String? city,
  String? state,
  String? zipCode,
  bool? isVerified,
  DateTime? createdAt,
  DateTime? lastLoginAt,
  double? sellerRating,
  double? buyerRating,
  String? uid,
  bool? isAdmin,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? dob,
  String? stripePaymentMethod,
  String? stripeCustomerId,
  String? about,
  String? coverPhoto,
  bool? isSeller,
  bool? isBuyer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'profileImageUrl': profileImageUrl,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'isVerified': isVerified,
      'createdAt': createdAt,
      'lastLoginAt': lastLoginAt,
      'sellerRating': sellerRating,
      'buyerRating': buyerRating,
      'uid': uid,
      'isAdmin': isAdmin,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'dob': dob,
      'stripe_payment_method': stripePaymentMethod,
      'stripe_customer_id': stripeCustomerId,
      'about': about,
      'cover_photo': coverPhoto,
      'isSeller': isSeller,
      'isBuyer': isBuyer,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.profileImageUrl == e2?.profileImageUrl &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zipCode == e2?.zipCode &&
        e1?.isVerified == e2?.isVerified &&
        e1?.createdAt == e2?.createdAt &&
        e1?.lastLoginAt == e2?.lastLoginAt &&
        e1?.sellerRating == e2?.sellerRating &&
        e1?.buyerRating == e2?.buyerRating &&
        e1?.uid == e2?.uid &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dob == e2?.dob &&
        e1?.stripePaymentMethod == e2?.stripePaymentMethod &&
        e1?.stripeCustomerId == e2?.stripeCustomerId &&
        e1?.about == e2?.about &&
        e1?.coverPhoto == e2?.coverPhoto &&
        e1?.isSeller == e2?.isSeller &&
        e1?.isBuyer == e2?.isBuyer;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.firstName,
        e?.lastName,
        e?.profileImageUrl,
        e?.city,
        e?.state,
        e?.zipCode,
        e?.isVerified,
        e?.createdAt,
        e?.lastLoginAt,
        e?.sellerRating,
        e?.buyerRating,
        e?.uid,
        e?.isAdmin,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.dob,
        e?.stripePaymentMethod,
        e?.stripeCustomerId,
        e?.about,
        e?.coverPhoto,
        e?.isSeller,
        e?.isBuyer
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
