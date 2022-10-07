import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeSerializer implements JsonConverter<DateTime, String> {
  const DateTimeSerializer();

  DateFormat get _formatter => DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");

  @override
  DateTime fromJson(String json) => _formatter.parse(json);

  @override
  String toJson(DateTime dateTime) => _formatter.format(dateTime);
}

class NullableDateTimeSerializer implements JsonConverter<DateTime?, String> {
  const NullableDateTimeSerializer();

  DateFormat get _formatter => DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");

  @override
  DateTime? fromJson(String json) =>
      json.isEmpty ? null : _formatter.parse(json);

  @override
  String toJson(DateTime? dateTime) =>
      dateTime == null ? '' : _formatter.format(dateTime);
}
