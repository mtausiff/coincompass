// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeytestBaseUrl = [
    145430156,
    3512977176,
    1542376896,
    2954632270,
    1154317188,
    4131947806,
    1245509785,
    2189913994,
    217993556,
    1673347983,
    3805974416
  ];
  static const List<int> _envieddatatestBaseUrl = [
    145430264,
    3512977277,
    1542376883,
    2954632250,
    1154317254,
    4131947903,
    1245509866,
    2189914095,
    217993473,
    1673348093,
    3805974524
  ];
  static final String testBaseUrl = String.fromCharCodes(
    List.generate(_envieddatatestBaseUrl.length, (i) => i, growable: false)
        .map((i) => _envieddatatestBaseUrl[i] ^ _enviedkeytestBaseUrl[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyliveBaseUrl = [
    3905354361,
    72714259,
    936817106,
    936274208,
    2989043803,
    769748005,
    1264398537,
    4054825559,
    2091234002,
    3449607851,
    1213762599
  ];
  static const List<int> _envieddataliveBaseUrl = [
    3905354261,
    72714362,
    936817060,
    936274245,
    2989043737,
    769748036,
    1264398522,
    4054825522,
    2091233927,
    3449607897,
    1213762635
  ];
  static final String liveBaseUrl = String.fromCharCodes(
    List.generate(_envieddataliveBaseUrl.length, (i) => i, growable: false)
        .map((i) => _envieddataliveBaseUrl[i] ^ _enviedkeyliveBaseUrl[i])
        .toList(growable: false),
  );
}
