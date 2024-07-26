import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _guideid =
          prefs.getStringList('ff_guideid')?.map((path) => path.ref).toList() ??
              _guideid;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchguide = false;
  bool get searchguide => _searchguide;
  set searchguide(bool value) {
    _searchguide = value;
  }

  List<DocumentReference> _guideid = [];
  List<DocumentReference> get guideid => _guideid;
  set guideid(List<DocumentReference> value) {
    _guideid = value;
    prefs.setStringList('ff_guideid', value.map((x) => x.path).toList());
  }

  void addToGuideid(DocumentReference value) {
    guideid.add(value);
    prefs.setStringList('ff_guideid', _guideid.map((x) => x.path).toList());
  }

  void removeFromGuideid(DocumentReference value) {
    guideid.remove(value);
    prefs.setStringList('ff_guideid', _guideid.map((x) => x.path).toList());
  }

  void removeAtIndexFromGuideid(int index) {
    guideid.removeAt(index);
    prefs.setStringList('ff_guideid', _guideid.map((x) => x.path).toList());
  }

  void updateGuideidAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    guideid[index] = updateFn(_guideid[index]);
    prefs.setStringList('ff_guideid', _guideid.map((x) => x.path).toList());
  }

  void insertAtIndexInGuideid(int index, DocumentReference value) {
    guideid.insert(index, value);
    prefs.setStringList('ff_guideid', _guideid.map((x) => x.path).toList());
  }

  List<PanierStruct> _panier = [];
  List<PanierStruct> get panier => _panier;
  set panier(List<PanierStruct> value) {
    _panier = value;
  }

  void addToPanier(PanierStruct value) {
    panier.add(value);
  }

  void removeFromPanier(PanierStruct value) {
    panier.remove(value);
  }

  void removeAtIndexFromPanier(int index) {
    panier.removeAt(index);
  }

  void updatePanierAtIndex(
    int index,
    PanierStruct Function(PanierStruct) updateFn,
  ) {
    panier[index] = updateFn(_panier[index]);
  }

  void insertAtIndexInPanier(int index, PanierStruct value) {
    panier.insert(index, value);
  }

  List<PostStruct> _post = [];
  List<PostStruct> get post => _post;
  set post(List<PostStruct> value) {
    _post = value;
  }

  void addToPost(PostStruct value) {
    post.add(value);
  }

  void removeFromPost(PostStruct value) {
    post.remove(value);
  }

  void removeAtIndexFromPost(int index) {
    post.removeAt(index);
  }

  void updatePostAtIndex(
    int index,
    PostStruct Function(PostStruct) updateFn,
  ) {
    post[index] = updateFn(_post[index]);
  }

  void insertAtIndexInPost(int index, PostStruct value) {
    post.insert(index, value);
  }

  int _currentPostId = 0;
  int get currentPostId => _currentPostId;
  set currentPostId(int value) {
    _currentPostId = value;
  }

  bool _isPremiumUser = false;
  bool get isPremiumUser => _isPremiumUser;
  set isPremiumUser(bool value) {
    _isPremiumUser = value;
  }

  String _uploadedFileURL = '';
  String get uploadedFileURL => _uploadedFileURL;
  set uploadedFileURL(String value) {
    _uploadedFileURL = value;
  }

  String _cleanText = '';
  String get cleanText => _cleanText;
  set cleanText(String value) {
    _cleanText = value;
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
