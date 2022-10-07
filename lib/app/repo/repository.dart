import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

abstract class Repository<T> {
  @protected
  Logger get logger => Logger(runtimeType.toString());

  Stream<T> get stream => _streamController.stream;
  final BehaviorSubject<T> _streamController = BehaviorSubject();

  void dispose() {
    _streamController.close();
  }

  bool get hasValue => _streamController.hasValue;

  @protected
  T? get value => _streamController.valueOrNull;

  @protected
  void addEvent(T event) => _streamController.add(event);

  @mustCallSuper
  void close() => _streamController.close();
}
