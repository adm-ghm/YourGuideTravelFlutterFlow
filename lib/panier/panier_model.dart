import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/checkgide/checkgide_widget.dart';
import 'panier_widget.dart' show PanierWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PanierModel extends FlutterFlowModel<PanierWidget> {
  ///  Local state fields for this page.

  int? indextotal;

  double? totalspending;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Panier widget.
  int? count;
  // Stores action output result for [Firestore Query - Query a collection] action in Panier widget.
  List<PaniersRecord>? liste;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
