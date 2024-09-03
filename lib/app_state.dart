import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
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
      _informe = prefs
              .getStringList('ff_informe')
              ?.map((x) {
                try {
                  return InformeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _informe;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _imagen = '';
  String get imagen => _imagen;
  set imagen(String value) {
    _imagen = value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  List<InformeStruct> _informe = [];
  List<InformeStruct> get informe => _informe;
  set informe(List<InformeStruct> value) {
    _informe = value;
    prefs.setStringList('ff_informe', value.map((x) => x.serialize()).toList());
  }

  void addToInforme(InformeStruct value) {
    informe.add(value);
    prefs.setStringList(
        'ff_informe', _informe.map((x) => x.serialize()).toList());
  }

  void removeFromInforme(InformeStruct value) {
    informe.remove(value);
    prefs.setStringList(
        'ff_informe', _informe.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromInforme(int index) {
    informe.removeAt(index);
    prefs.setStringList(
        'ff_informe', _informe.map((x) => x.serialize()).toList());
  }

  void updateInformeAtIndex(
    int index,
    InformeStruct Function(InformeStruct) updateFn,
  ) {
    informe[index] = updateFn(_informe[index]);
    prefs.setStringList(
        'ff_informe', _informe.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInInforme(int index, InformeStruct value) {
    informe.insert(index, value);
    prefs.setStringList(
        'ff_informe', _informe.map((x) => x.serialize()).toList());
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
