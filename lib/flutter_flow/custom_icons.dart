import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _homeFamily = 'Home';
  static const String _listingFamily = 'Listing';
  static const String _tradingFamily = 'Trading';
  static const String _sortFamily = 'Sort';
  static const String _checkIconFamily = 'CheckIcon';
  static const String _locationFamily = 'Location';
  static const String _logoFamily = 'Logo';
  static const String _linkSquareFamily = 'LinkSquare';

  // home
  static const IconData kfEIconHome = IconData(0xe900, fontFamily: _homeFamily);

  // listing
  static const IconData kfEIconListing =
      IconData(0xe901, fontFamily: _listingFamily);

  // trading
  static const IconData kfEIconTrading =
      IconData(0xe903, fontFamily: _tradingFamily);

  // sort
  static const IconData kfi9126004 = IconData(0xe900, fontFamily: _sortFamily);

  // check_icon
  static const IconData kcheckCircleOutline =
      IconData(0xe901, fontFamily: _checkIconFamily);

  // location
  static const IconData kfi2901609 =
      IconData(0xe900, fontFamily: _locationFamily);

  // logo
  static const IconData kshapeCicrle =
      IconData(0xe900, fontFamily: _logoFamily);

  // link-square
  static const IconData kfi3405255 =
      IconData(0xe900, fontFamily: _linkSquareFamily);
}
