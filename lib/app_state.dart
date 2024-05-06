import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
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

  String _countryName = 'Germany';
  String get countryName => _countryName;
  set countryName(String value) {
    _countryName = value;
  }

  String _phonenumber = '';
  String get phonenumber => _phonenumber;
  set phonenumber(String value) {
    _phonenumber = value;
  }

  DateTime? _birthDate = DateTime.fromMillisecondsSinceEpoch(946681200000);
  DateTime? get birthDate => _birthDate;
  set birthDate(DateTime? value) {
    _birthDate = value;
  }

  String _birthDateString = '';
  String get birthDateString => _birthDateString;
  set birthDateString(String value) {
    _birthDateString = value;
  }

  int _selectedGender = 1;
  int get selectedGender => _selectedGender;
  set selectedGender(int value) {
    _selectedGender = value;
  }

  List<String> _selectedGenderSearch = ['1'];
  List<String> get selectedGenderSearch => _selectedGenderSearch;
  set selectedGenderSearch(List<String> value) {
    _selectedGenderSearch = value;
  }

  void addToSelectedGenderSearch(String value) {
    _selectedGenderSearch.add(value);
  }

  void removeFromSelectedGenderSearch(String value) {
    _selectedGenderSearch.remove(value);
  }

  void removeAtIndexFromSelectedGenderSearch(int index) {
    _selectedGenderSearch.removeAt(index);
  }

  void updateSelectedGenderSearchAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedGenderSearch[index] = updateFn(_selectedGenderSearch[index]);
  }

  void insertAtIndexInSelectedGenderSearch(int index, String value) {
    _selectedGenderSearch.insert(index, value);
  }

  List<String> _selectedTags = [];
  List<String> get selectedTags => _selectedTags;
  set selectedTags(List<String> value) {
    _selectedTags = value;
  }

  void addToSelectedTags(String value) {
    _selectedTags.add(value);
  }

  void removeFromSelectedTags(String value) {
    _selectedTags.remove(value);
  }

  void removeAtIndexFromSelectedTags(int index) {
    _selectedTags.removeAt(index);
  }

  void updateSelectedTagsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedTags[index] = updateFn(_selectedTags[index]);
  }

  void insertAtIndexInSelectedTags(int index, String value) {
    _selectedTags.insert(index, value);
  }

  String _selectedUniversity = '';
  String get selectedUniversity => _selectedUniversity;
  set selectedUniversity(String value) {
    _selectedUniversity = value;
  }

  String _selectedStudycourse = '';
  String get selectedStudycourse => _selectedStudycourse;
  set selectedStudycourse(String value) {
    _selectedStudycourse = value;
  }

  final _universityListManager = StreamRequestManager<List<UniversityRecord>>();
  Stream<List<UniversityRecord>> universityList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<UniversityRecord>> Function() requestFn,
  }) =>
      _universityListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUniversityListCache() => _universityListManager.clear();
  void clearUniversityListCacheKey(String? uniqueKey) =>
      _universityListManager.clearRequest(uniqueKey);
}
