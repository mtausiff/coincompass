import 'package:json_annotation/json_annotation.dart';
import 'package:tausifcoincompass/core/base/model/base_model.dart';
import 'package:flutter/material.dart';

import '../../../models/base_response_message_model.dart';
import 'coin_details_base_model.dart';

part 'fetch_coinlist_response_model.g.dart';
@immutable
@JsonSerializable()
class FetchCoinListResponseModel extends BaseModel<FetchCoinListResponseModel> {
  final int? code;
  final Message? message;
  final List<CoinDetailsBaseModel>? data;

  FetchCoinListResponseModel({
    this.code,
    this.message,
    this.data,});

  factory FetchCoinListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FetchCoinListResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FetchCoinListResponseModelToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$FetchCoinListResponseModelFromJson(json);

}