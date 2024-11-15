// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_work_shift.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmployeeWorkShift extends EmployeeWorkShift {
  @override
  final Date date;
  @override
  final String employeeId;
  @override
  final bool approved;
  @override
  final String? id;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final BuiltList<String>? truckIds;
  @override
  final bool? dayOffWorkAllowance;
  @override
  final AbsenceType? absence;
  @override
  final PerDiemAllowanceType? perDiemAllowance;
  @override
  final String? notes;

  factory _$EmployeeWorkShift(
          [void Function(EmployeeWorkShiftBuilder)? updates]) =>
      (new EmployeeWorkShiftBuilder()..update(updates))._build();

  _$EmployeeWorkShift._(
      {required this.date,
      required this.employeeId,
      required this.approved,
      this.id,
      this.startedAt,
      this.endedAt,
      this.truckIds,
      this.dayOffWorkAllowance,
      this.absence,
      this.perDiemAllowance,
      this.notes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(date, r'EmployeeWorkShift', 'date');
    BuiltValueNullFieldError.checkNotNull(
        employeeId, r'EmployeeWorkShift', 'employeeId');
    BuiltValueNullFieldError.checkNotNull(
        approved, r'EmployeeWorkShift', 'approved');
  }

  @override
  EmployeeWorkShift rebuild(void Function(EmployeeWorkShiftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeWorkShiftBuilder toBuilder() =>
      new EmployeeWorkShiftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeWorkShift &&
        date == other.date &&
        employeeId == other.employeeId &&
        approved == other.approved &&
        id == other.id &&
        startedAt == other.startedAt &&
        endedAt == other.endedAt &&
        truckIds == other.truckIds &&
        dayOffWorkAllowance == other.dayOffWorkAllowance &&
        absence == other.absence &&
        perDiemAllowance == other.perDiemAllowance &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, employeeId.hashCode);
    _$hash = $jc(_$hash, approved.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, endedAt.hashCode);
    _$hash = $jc(_$hash, truckIds.hashCode);
    _$hash = $jc(_$hash, dayOffWorkAllowance.hashCode);
    _$hash = $jc(_$hash, absence.hashCode);
    _$hash = $jc(_$hash, perDiemAllowance.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmployeeWorkShift')
          ..add('date', date)
          ..add('employeeId', employeeId)
          ..add('approved', approved)
          ..add('id', id)
          ..add('startedAt', startedAt)
          ..add('endedAt', endedAt)
          ..add('truckIds', truckIds)
          ..add('dayOffWorkAllowance', dayOffWorkAllowance)
          ..add('absence', absence)
          ..add('perDiemAllowance', perDiemAllowance)
          ..add('notes', notes))
        .toString();
  }
}

class EmployeeWorkShiftBuilder
    implements Builder<EmployeeWorkShift, EmployeeWorkShiftBuilder> {
  _$EmployeeWorkShift? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _employeeId;
  String? get employeeId => _$this._employeeId;
  set employeeId(String? employeeId) => _$this._employeeId = employeeId;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _endedAt;
  DateTime? get endedAt => _$this._endedAt;
  set endedAt(DateTime? endedAt) => _$this._endedAt = endedAt;

  ListBuilder<String>? _truckIds;
  ListBuilder<String> get truckIds =>
      _$this._truckIds ??= new ListBuilder<String>();
  set truckIds(ListBuilder<String>? truckIds) => _$this._truckIds = truckIds;

  bool? _dayOffWorkAllowance;
  bool? get dayOffWorkAllowance => _$this._dayOffWorkAllowance;
  set dayOffWorkAllowance(bool? dayOffWorkAllowance) =>
      _$this._dayOffWorkAllowance = dayOffWorkAllowance;

  AbsenceType? _absence;
  AbsenceType? get absence => _$this._absence;
  set absence(AbsenceType? absence) => _$this._absence = absence;

  PerDiemAllowanceType? _perDiemAllowance;
  PerDiemAllowanceType? get perDiemAllowance => _$this._perDiemAllowance;
  set perDiemAllowance(PerDiemAllowanceType? perDiemAllowance) =>
      _$this._perDiemAllowance = perDiemAllowance;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  EmployeeWorkShiftBuilder() {
    EmployeeWorkShift._defaults(this);
  }

  EmployeeWorkShiftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _employeeId = $v.employeeId;
      _approved = $v.approved;
      _id = $v.id;
      _startedAt = $v.startedAt;
      _endedAt = $v.endedAt;
      _truckIds = $v.truckIds?.toBuilder();
      _dayOffWorkAllowance = $v.dayOffWorkAllowance;
      _absence = $v.absence;
      _perDiemAllowance = $v.perDiemAllowance;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmployeeWorkShift other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmployeeWorkShift;
  }

  @override
  void update(void Function(EmployeeWorkShiftBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmployeeWorkShift build() => _build();

  _$EmployeeWorkShift _build() {
    _$EmployeeWorkShift _$result;
    try {
      _$result = _$v ??
          new _$EmployeeWorkShift._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'EmployeeWorkShift', 'date'),
              employeeId: BuiltValueNullFieldError.checkNotNull(
                  employeeId, r'EmployeeWorkShift', 'employeeId'),
              approved: BuiltValueNullFieldError.checkNotNull(
                  approved, r'EmployeeWorkShift', 'approved'),
              id: id,
              startedAt: startedAt,
              endedAt: endedAt,
              truckIds: _truckIds?.build(),
              dayOffWorkAllowance: dayOffWorkAllowance,
              absence: absence,
              perDiemAllowance: perDiemAllowance,
              notes: notes);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'truckIds';
        _truckIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EmployeeWorkShift', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
