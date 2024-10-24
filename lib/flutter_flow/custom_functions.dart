import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic feeCalculator(double salePrice) {
  int salePriceCents = (salePrice * 100).round();
  int feeCents = 0;
  int sellerFeeCents = 0;

  if (salePriceCents <= 10000) {
    feeCents = (salePriceCents * 0.10).round();
  } else if (salePriceCents <= 20000) {
    feeCents = 1000 + ((salePriceCents - 10000) * 0.08).round();
  } else {
    feeCents = 1000 + 800 + ((salePriceCents - 20000) * 0.06).round();
  }

  sellerFeeCents = salePriceCents - feeCents;

  // Convert back to dollars for the JSON output
  double feeInDollars = feeCents / 100.0;
  double sellerFeeInDollars = sellerFeeCents / 100.0;

  // Return as a JSON string with dollar amounts
  return '{"fee": ${feeInDollars.toStringAsFixed(2)}, "sellerFee": ${sellerFeeInDollars.toStringAsFixed(2)}, "feeCents": $feeCents, "sellerFeeCents": $sellerFeeCents}';
  // MODIFY CODE ONLY ABOVE THIS LINE
}
