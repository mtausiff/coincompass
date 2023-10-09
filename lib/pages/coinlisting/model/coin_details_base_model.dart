import 'package:json_annotation/json_annotation.dart';
import 'package:tausifcoincompass/core/base/model/base_model.dart';
import 'package:flutter/material.dart';

part 'coin_details_base_model.g.dart';
@immutable
@JsonSerializable()
class CoinDetailsBaseModel extends BaseModel<CoinDetailsBaseModel> {
  final int? pk;
  final String? coinId;
  final String? coinName;
  final String? coinSymbol;
  final String? image;
  final String? description;
  final int? marketCapRank;

  CoinDetailsBaseModel({
    this.pk,
    this.coinId,
    this.coinName,
    this.coinSymbol,
    this.image,
    this.description,
    this.marketCapRank,
  });

  factory CoinDetailsBaseModel.fromJson(Map<String, dynamic> json) => _$CoinDetailsBaseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoinDetailsBaseModelToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$CoinDetailsBaseModelFromJson(json);

}