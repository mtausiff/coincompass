// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_coinlist_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchCoinListResponseModel _$FetchCoinListResponseModelFromJson(
        Map<String, dynamic> json) =>
    FetchCoinListResponseModel(
      code: json['code'] as int?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CoinDetailsBaseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FetchCoinListResponseModelToJson(
        FetchCoinListResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
