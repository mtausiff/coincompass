// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      type: json['type'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'content': instance.content,
      'action': instance.action,
    };
