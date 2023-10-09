// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_details_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinDetailsBaseModel _$CoinDetailsBaseModelFromJson(
        Map<String, dynamic> json) =>
    CoinDetailsBaseModel(
      pk: json['pk'] as int?,
      coinId: json['coinId'] as String?,
      coinName: json['coinName'] as String?,
      coinSymbol: json['coinSymbol'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      marketCapRank: json['marketCapRank'] as int?,
    );

Map<String, dynamic> _$CoinDetailsBaseModelToJson(
        CoinDetailsBaseModel instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'coinId': instance.coinId,
      'coinName': instance.coinName,
      'coinSymbol': instance.coinSymbol,
      'image': instance.image,
      'description': instance.description,
      'marketCapRank': instance.marketCapRank,
    };
