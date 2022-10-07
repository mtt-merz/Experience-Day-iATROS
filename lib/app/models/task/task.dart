import 'package:experience_day_iatros/app/utils/serializer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable(constructor: '_')
class Task {
  final String id;

  final int type;

  final String title;

  final String description;

  final String dose;

  @DateTimeSerializer()
  final DateTime dueDate;

  final String patientID;

  @NullableDateTimeSerializer()
  DateTime? completedAt;

  Task._(this.id, this.type, this.title, this.description, this.dose,
      this.dueDate, this.patientID, this.completedAt);

  factory Task.fromJson(json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
