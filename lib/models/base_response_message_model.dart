import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_message_model.g.dart';

@immutable
@JsonSerializable()
class Message {
  final String? type;
  final String? title;
  final String? content;
  final String? action;

  Message({this.type,
    this.title,
    this.content,
    this.action,});

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

}