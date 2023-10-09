import 'package:json_annotation/json_annotation.dart';
import 'package:tausifcoincompass/core/base/model/base_model.dart';
import 'package:flutter/material.dart';

part 'fetch_coin_request_model.g.dart';
@immutable
@JsonSerializable()
class FetchCoinRequestModel extends BaseModel<FetchCoinRequestModel> {
  final String? queryName;
  final String? coinId;
  final String? exchangeId;
  final int? totalCoins;
  final int? totalExchanges;
  final int? fromMktCapRank;
  final int? toMktCapRank;
  final String? targetCurrency;
  final bool? marketData;
  final bool? tickers;
  final bool? communityData;
  final bool? developerData;
  final bool? sparkline;
  final int? numberOfTopCoins;

  FetchCoinRequestModel({
      this.queryName,
      this.coinId,
      this.exchangeId,
      this.totalCoins,
      this.totalExchanges,
      this.fromMktCapRank,
      this.toMktCapRank,
      this.targetCurrency,
      this.marketData,
      this.tickers,
      this.communityData,
      this.developerData,
      this.sparkline,
      this.numberOfTopCoins,});

  factory FetchCoinRequestModel.fromJson(Map<String, dynamic> json) => _$FetchCoinRequestModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FetchCoinRequestModelToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$FetchCoinRequestModelFromJson(json);

}