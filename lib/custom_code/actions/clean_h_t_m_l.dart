// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> cleanHTML(String? text) async {
  // function cleanHTML(input) {   return input.replace(/<\/?[^>]+(>|$)/g, ""); }  // Utilisez la fonction cleanHTML avec votre texte JSON let originalText = inputs.text; // 'inputs.text' est la valeur d'entrée let cleanedText = cleanHTML(originalText);  // Retournez le texte nettoyé return { cleanText: cleanedText };
  if (text == null) {
    return null;
  }
  String cleanedText = text.replaceAll(RegExp(r'<[^>]*>'), '');
  return cleanedText;
}
