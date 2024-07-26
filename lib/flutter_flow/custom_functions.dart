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
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? removeHtmlTags(String? htmlString) {
  final RegExp exp = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);
  return htmlString?.replaceAll(exp, '');
}

List<String>? newCustomFunction(String? htmlString) {
  if (htmlString == null) {
    return null;
  }

  // Expression régulière pour trouver les balises <img> et extraire les attributs src
  final RegExp imgTagRegExp =
      RegExp(r'<img[^>]+src="([^">]+)"', caseSensitive: false);
  final Iterable<Match> matches = imgTagRegExp.allMatches(htmlString);

  // Extraire les URLs des images des correspondances
  final List<String> imgUrls =
      matches.map((match) => match.group(1) ?? '').toList();

  return imgUrls;
}
