// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeEntry extends TimeEntry {
  @override
  final String employeeId;
  @override
  final DateTime startTime;
  @override
  final String workTypeId;
  @override
  final String? id;
  @override
  final DateTime? endTime;

  factory _$TimeEntry([void Function(TimeEntryBuilder)? updates]) =>
      (new TimeEntryBuilder()..update(updates))._build();

  _$TimeEntry._(
      {required this.employeeId,
      required this.startTime,
      required this.workTypeId,
      this.id,
      this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        employeeId, r'TimeEntry', 'employeeId');
    BuiltValueNullFieldError.checkNotNull(startTime, r'TimeEntry', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        workTypeId, r'TimeEntry', 'workTypeId');
  }

  @override
  TimeEntry rebuild(void Function(TimeEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeEntryBuilder toBuilder() => new TimeEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeEntry &&
        employeeId == other.employeeId &&
        startTime == other.startTime &&
        workTypeId == other.workTypeId &&
        id == other.id &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, employeeId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, workTypeId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeEntry')
          ..add('employeeId', employeeId)
          ..add('startTime', startTime)
          ..add('workTypeId', workTypeId)
          ..add('id', id)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimeEntryBuilder implements Builder<TimeEntry, TimeEntryBuilder> {
  _$TimeEntry? _$v;

  String? _employeeId;
  String? get employeeId => _$this._employeeId;
  set employeeId(String? employeeId) => _$this._employeeId = employeeId;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  String? _workTypeId;
  String? get workTypeId => _$this._workTypeId;
  set workTypeId(String? workTypeId) => _$this._workTypeId = workTypeId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  TimeEntryBuilder() {
    TimeEntry._defaults(this);
  }

  TimeEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _employeeId = $v.employeeId;
      _startTime = $v.startTime;
      _workTypeId = $v.workTypeId;
      _id = $v.id;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeEntry;
  }

  @override
  void update(void Function(TimeEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeEntry build() => _build();

  _$TimeEntry _build() {
    final _$result = _$v ??
        new _$TimeEntry._(
            employeeId: BuiltValueNullFieldError.checkNotNull(
                employeeId, r'TimeEntry', 'employeeId'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'TimeEntry', 'startTime'),
            workTypeId: BuiltValueNullFieldError.checkNotNull(
                workTypeId, r'TimeEntry', 'workTypeId'),
            id: id,
            endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
