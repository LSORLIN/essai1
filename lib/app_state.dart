import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _varUrlPhoto = prefs.getString('ff_varUrlPhoto') ?? _varUrlPhoto;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _varUrlPhoto =
      'https://firebasestorage.googleapis.com/v0/b/essais-divers-fflow.appspot.com/o/Dossier%20de%20l\'app%2FNo%20image.png?alt=media&token=f9cd43e0-4926-4ad5-9690-1736aed55d40';
  String get varUrlPhoto => _varUrlPhoto;
  set varUrlPhoto(String _value) {
    _varUrlPhoto = _value;
    prefs.setString('ff_varUrlPhoto', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
