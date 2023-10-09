// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_coin_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchCoinRequestModel _$FetchCoinRequestModelFromJson(
        Map<String, dynamic> json) =>
    FetchCoinRequestModel(
      queryName: json['queryName'] as String?,
      coinId: json['coinId'] as String?,
      exchangeId: json['exchangeId'] as String?,
      totalCoins: json['totalCoins'] as int?,
      totalExchanges: json['totalExchanges'] as int?,
      fromMktCapRank: json['fromMktCapRank'] as int?,
      toMktCapRank: json['toMktCapRank'] as int?,
      targetCurrency: json['targetCurrency'] as String?,
      marketData: json['marketData'] as bool?,
      tickers: json['tickers'] as bool?,
      communityData: json['communityData'] as bool?,
      developerData: json['developerData'] as bool?,
      sparkline: json['sparkline'] as bool?,
      numberOfTopCoins: json['numberOfTopCoins'] as int?,
    );

Map<String, dynamic> _$FetchCoinRequestModelToJson(
        FetchCoinRequestModel instance) =>
    <String, dynamic>{
      'queryName': instance.queryName,
      'coinId': instance.coinId,
      'exchangeId': instance.exchangeId,
      'totalCoins': instance.totalCoins,
      'totalExchanges': instance.totalExchanges,
      'fromMktCapRank': instance.fromMktCapRank,
      'toMktCapRank': instance.toMktCapRank,
      'targetCurrency': instance.targetCurrency,
      'marketData': instance.marketData,
      'tickers': instance.tickers,
      'communityData': instance.communityData,
      'developerData': instance.developerData,
      'sparkline': instance.sparkline,
      'numberOfTopCoins': instance.numberOfTopCoins,
    };
