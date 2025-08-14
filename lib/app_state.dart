import 'package:flutter/material.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _modoAnfitrion = false;
  bool get modoAnfitrion => _modoAnfitrion;
  set modoAnfitrion(bool value) {
    _modoAnfitrion = value;
  }

  List<ObjetivoStruct> _otorgamientos = [];
  List<ObjetivoStruct> get otorgamientos => _otorgamientos;
  set otorgamientos(List<ObjetivoStruct> value) {
    _otorgamientos = value;
  }

  void addToOtorgamientos(ObjetivoStruct value) {
    otorgamientos.add(value);
  }

  void removeFromOtorgamientos(ObjetivoStruct value) {
    otorgamientos.remove(value);
  }

  void removeAtIndexFromOtorgamientos(int index) {
    otorgamientos.removeAt(index);
  }

  void updateOtorgamientosAtIndex(
    int index,
    ObjetivoStruct Function(ObjetivoStruct) updateFn,
  ) {
    otorgamientos[index] = updateFn(_otorgamientos[index]);
  }

  void insertAtIndexInOtorgamientos(int index, ObjetivoStruct value) {
    otorgamientos.insert(index, value);
  }

  List<DocumentReference> _otorgaminetos = [];
  List<DocumentReference> get otorgaminetos => _otorgaminetos;
  set otorgaminetos(List<DocumentReference> value) {
    _otorgaminetos = value;
  }

  void addToOtorgaminetos(DocumentReference value) {
    otorgaminetos.add(value);
  }

  void removeFromOtorgaminetos(DocumentReference value) {
    otorgaminetos.remove(value);
  }

  void removeAtIndexFromOtorgaminetos(int index) {
    otorgaminetos.removeAt(index);
  }

  void updateOtorgaminetosAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    otorgaminetos[index] = updateFn(_otorgaminetos[index]);
  }

  void insertAtIndexInOtorgaminetos(int index, DocumentReference value) {
    otorgaminetos.insert(index, value);
  }

  LatLng? _testlatlang = LatLng(10.4814552, -66.8610592);
  LatLng? get testlatlang => _testlatlang;
  set testlatlang(LatLng? value) {
    _testlatlang = value;
  }

  bool _rastrear = false;
  bool get rastrear => _rastrear;
  set rastrear(bool value) {
    _rastrear = value;
  }
}
