// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task._(
      json['id'] as String,
      json['type'] as int,
      json['title'] as String,
      json['description'] as String,
      json['dose'] as String,
      const DateTimeSerializer().fromJson(json['dueDate'] as String),
      json['patientID'] as String,
      _$JsonConverterFromJson<String, DateTime?>(
          json['completedAt'], const NullableDateTimeSerializer().fromJson),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'dose': instance.dose,
      'dueDate': const DateTimeSerializer().toJson(instance.dueDate),
      'patientID': instance.patientID,
      'completedAt':
          const NullableDateTimeSerializer().toJson(instance.completedAt),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
