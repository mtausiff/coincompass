// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeytestBaseUrl = [
    3205253491,
    911103839,
    1464063200,
    1191561128,
    964421774,
    699747860,
    1046223880,
    4228042099,
    1535007736,
    2534671725,
    344788663
  ];
  static const List<int> _envieddatatestBaseUrl = [
    3205253383,
    911103802,
    1464063123,
    1191561180,
    964421836,
    699747957,
    1046223995,
    4228042006,
    1535007661,
    2534671647,
    344788699
  ];
  static final String testBaseUrl = String.fromCharCodes(
    List.generate(_envieddatatestBaseUrl.length, (i) => i, growable: false)
        .map((i) => _envieddatatestBaseUrl[i] ^ _enviedkeytestBaseUrl[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyliveBaseUrl = [
    4206756704,
    2218378643,
    2647096880,
    1078259487,
    8812129,
    90094120,
    3506031308,
    885347602,
    3518748416,
    1922815518,
    1224048120
  ];
  static const List<int> _envieddataliveBaseUrl = [
    4206756620,
    2218378746,
    2647096902,
    1078259578,
    8812067,
    90094153,
    3506031295,
    885347703,
    3518748501,
    1922815596,
    1224048020
  ];
  static final String liveBaseUrl = String.fromCharCodes(
    List.generate(_envieddataliveBaseUrl.length, (i) => i, growable: false)
        .map((i) => _envieddataliveBaseUrl[i] ^ _enviedkeyliveBaseUrl[i])
        .toList(growable: false),
  );
}
