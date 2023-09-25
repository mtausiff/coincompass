// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeytestBaseUrl = [
    1167644377,
    3990382245,
    1284013488,
    1624678399,
    3603920941,
    3206692955,
    678425458,
    1677169498,
    3064768362,
    1207312499,
    20144905
  ];
  static const List<int> _envieddatatestBaseUrl = [
    1167644333,
    3990382272,
    1284013507,
    1624678283,
    3603921007,
    3206692922,
    678425345,
    1677169471,
    3064768319,
    1207312385,
    20144997
  ];
  static final String testBaseUrl = String.fromCharCodes(
    List.generate(_envieddatatestBaseUrl.length, (i) => i, growable: false)
        .map((i) => _envieddatatestBaseUrl[i] ^ _enviedkeytestBaseUrl[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyliveBaseUrl = [
    2160768740,
    2831780047,
    389252443,
    2804135301,
    2016064760,
    1260533663,
    2559905953,
    3815445061,
    227791595,
    503717330,
    1295691197
  ];
  static const List<int> _envieddataliveBaseUrl = [
    2160768648,
    2831780006,
    389252397,
    2804135392,
    2016064698,
    1260533758,
    2559906002,
    3815445024,
    227791550,
    503717280,
    1295691217
  ];
  static final String liveBaseUrl = String.fromCharCodes(
    List.generate(_envieddataliveBaseUrl.length, (i) => i, growable: false)
        .map((i) => _envieddataliveBaseUrl[i] ^ _enviedkeyliveBaseUrl[i])
        .toList(growable: false),
  );
}
