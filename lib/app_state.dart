import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _initiaAppState = prefs.getBool('ff_initiaAppState') ?? _initiaAppState;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _initiaAppState = false;
  bool get initiaAppState => _initiaAppState;
  set initiaAppState(bool value) {
    _initiaAppState = value;
    prefs.setBool('ff_initiaAppState', value);
  }

  String _sidebarSelectedItem = '';
  String get sidebarSelectedItem => _sidebarSelectedItem;
  set sidebarSelectedItem(String value) {
    _sidebarSelectedItem = value;
  }

  String _bidsTab = '';
  String get bidsTab => _bidsTab;
  set bidsTab(String value) {
    _bidsTab = value;
  }

  bool _searchHomepage = false;
  bool get searchHomepage => _searchHomepage;
  set searchHomepage(bool value) {
    _searchHomepage = value;
  }

  List<String> _brands = [];
  List<String> get brands => _brands;
  set brands(List<String> value) {
    _brands = value;
  }

  void addToBrands(String value) {
    brands.add(value);
  }

  void removeFromBrands(String value) {
    brands.remove(value);
  }

  void removeAtIndexFromBrands(int index) {
    brands.removeAt(index);
  }

  void updateBrandsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    brands[index] = updateFn(_brands[index]);
  }

  void insertAtIndexInBrands(int index, String value) {
    brands.insert(index, value);
  }

  bool _searchInSearchPage = false;
  bool get searchInSearchPage => _searchInSearchPage;
  set searchInSearchPage(bool value) {
    _searchInSearchPage = value;
  }

  List<String> _productImages = [];
  List<String> get productImages => _productImages;
  set productImages(List<String> value) {
    _productImages = value;
  }

  void addToProductImages(String value) {
    productImages.add(value);
  }

  void removeFromProductImages(String value) {
    productImages.remove(value);
  }

  void removeAtIndexFromProductImages(int index) {
    productImages.removeAt(index);
  }

  void updateProductImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    productImages[index] = updateFn(_productImages[index]);
  }

  void insertAtIndexInProductImages(int index, String value) {
    productImages.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
