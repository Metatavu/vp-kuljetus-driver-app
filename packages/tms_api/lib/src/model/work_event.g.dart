// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkEvent extends WorkEvent {
  @override
  final String employeeId;
  @override
  final DateTime time;
  @override
  final WorkEventType workEventType;
  @override
  final String? id;
  @override
  final String? employeeWorkShiftId;
  @override
  final String? truckId;

  factory _$WorkEvent([void Function(WorkEventBuilder)? updates]) =>
      (new WorkEventBuilder()..update(updates))._build();

  _$WorkEvent._(
      {required this.employeeId,
      required this.time,
      required this.workEventType,
      this.id,
      this.employeeWorkShiftId,
      this.truckId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        employeeId, r'WorkEvent', 'employeeId');
    BuiltValueNullFieldError.checkNotNull(time, r'WorkEvent', 'time');
    BuiltValueNullFieldError.checkNotNull(
        workEventType, r'WorkEvent', 'workEventType');
  }

  @override
  WorkEvent rebuild(void Function(WorkEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkEventBuilder toBuilder() => new WorkEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkEvent &&
        employeeId == other.employeeId &&
        time == other.time &&
        workEventType == other.workEventType &&
        id == other.id &&
        employeeWorkShiftId == other.employeeWorkShiftId &&
        truckId == other.truckId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, employeeId.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, workEventType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, employeeWorkShiftId.hashCode);
    _$hash = $jc(_$hash, truckId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkEvent')
          ..add('employeeId', employeeId)
          ..add('time', time)
          ..add('workEventType', workEventType)
          ..add('id', id)
          ..add('employeeWorkShiftId', employeeWorkShiftId)
          ..add('truckId', truckId))
        .toString();
  }
}

class WorkEventBuilder implements Builder<WorkEvent, WorkEventBuilder> {
  _$WorkEvent? _$v;

  String? _employeeId;
  String? get employeeId => _$this._employeeId;
  set employeeId(String? employeeId) => _$this._employeeId = employeeId;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  WorkEventType? _workEventType;
  WorkEventType? get workEventType => _$this._workEventType;
  set workEventType(WorkEventType? workEventType) =>
      _$this._workEventType = workEventType;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _employeeWorkShiftId;
  String? get employeeWorkShiftId => _$this._employeeWorkShiftId;
  set employeeWorkShiftId(String? employeeWorkShiftId) =>
      _$this._employeeWorkShiftId = employeeWorkShiftId;

  String? _truckId;
  String? get truckId => _$this._truckId;
  set truckId(String? truckId) => _$this._truckId = truckId;

  WorkEventBuilder() {
    WorkEvent._defaults(this);
  }

  WorkEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _employeeId = $v.employeeId;
      _time = $v.time;
      _workEventType = $v.workEventType;
      _id = $v.id;
      _employeeWorkShiftId = $v.employeeWorkShiftId;
      _truckId = $v.truckId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkEvent;
  }

  @override
  void update(void Function(WorkEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkEvent build() => _build();

  _$WorkEvent _build() {
    final _$result = _$v ??
        new _$WorkEvent._(
            employeeId: BuiltValueNullFieldError.checkNotNull(
                employeeId, r'WorkEvent', 'employeeId'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'WorkEvent', 'time'),
            workEventType: BuiltValueNullFieldError.checkNotNull(
                workEventType, r'WorkEvent', 'workEventType'),
            id: id,
            employeeWorkShiftId: employeeWorkShiftId,
            truckId: truckId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
