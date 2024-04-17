// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Task extends Task {
  @override
  final String freightId;
  @override
  final String customerSiteId;
  @override
  final TaskType type;
  @override
  final int groupNumber;
  @override
  final TaskStatus status;
  @override
  final String? id;
  @override
  final int? orderNumber;
  @override
  final String? remarks;
  @override
  final String? routeId;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? creatorId;
  @override
  final DateTime? createdAt;
  @override
  final String? lastModifierId;
  @override
  final DateTime? modifiedAt;

  factory _$Task([void Function(TaskBuilder)? updates]) =>
      (new TaskBuilder()..update(updates))._build();

  _$Task._(
      {required this.freightId,
      required this.customerSiteId,
      required this.type,
      required this.groupNumber,
      required this.status,
      this.id,
      this.orderNumber,
      this.remarks,
      this.routeId,
      this.startedAt,
      this.finishedAt,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(freightId, r'Task', 'freightId');
    BuiltValueNullFieldError.checkNotNull(
        customerSiteId, r'Task', 'customerSiteId');
    BuiltValueNullFieldError.checkNotNull(type, r'Task', 'type');
    BuiltValueNullFieldError.checkNotNull(groupNumber, r'Task', 'groupNumber');
    BuiltValueNullFieldError.checkNotNull(status, r'Task', 'status');
  }

  @override
  Task rebuild(void Function(TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskBuilder toBuilder() => new TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task &&
        freightId == other.freightId &&
        customerSiteId == other.customerSiteId &&
        type == other.type &&
        groupNumber == other.groupNumber &&
        status == other.status &&
        id == other.id &&
        orderNumber == other.orderNumber &&
        remarks == other.remarks &&
        routeId == other.routeId &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        creatorId == other.creatorId &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, freightId.hashCode);
    _$hash = $jc(_$hash, customerSiteId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, groupNumber.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderNumber.hashCode);
    _$hash = $jc(_$hash, remarks.hashCode);
    _$hash = $jc(_$hash, routeId.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Task')
          ..add('freightId', freightId)
          ..add('customerSiteId', customerSiteId)
          ..add('type', type)
          ..add('groupNumber', groupNumber)
          ..add('status', status)
          ..add('id', id)
          ..add('orderNumber', orderNumber)
          ..add('remarks', remarks)
          ..add('routeId', routeId)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class TaskBuilder implements Builder<Task, TaskBuilder> {
  _$Task? _$v;

  String? _freightId;
  String? get freightId => _$this._freightId;
  set freightId(String? freightId) => _$this._freightId = freightId;

  String? _customerSiteId;
  String? get customerSiteId => _$this._customerSiteId;
  set customerSiteId(String? customerSiteId) =>
      _$this._customerSiteId = customerSiteId;

  TaskType? _type;
  TaskType? get type => _$this._type;
  set type(TaskType? type) => _$this._type = type;

  int? _groupNumber;
  int? get groupNumber => _$this._groupNumber;
  set groupNumber(int? groupNumber) => _$this._groupNumber = groupNumber;

  TaskStatus? _status;
  TaskStatus? get status => _$this._status;
  set status(TaskStatus? status) => _$this._status = status;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _orderNumber;
  int? get orderNumber => _$this._orderNumber;
  set orderNumber(int? orderNumber) => _$this._orderNumber = orderNumber;

  String? _remarks;
  String? get remarks => _$this._remarks;
  set remarks(String? remarks) => _$this._remarks = remarks;

  String? _routeId;
  String? get routeId => _$this._routeId;
  set routeId(String? routeId) => _$this._routeId = routeId;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _creatorId;
  String? get creatorId => _$this._creatorId;
  set creatorId(String? creatorId) => _$this._creatorId = creatorId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _lastModifierId;
  String? get lastModifierId => _$this._lastModifierId;
  set lastModifierId(String? lastModifierId) =>
      _$this._lastModifierId = lastModifierId;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  TaskBuilder() {
    Task._defaults(this);
  }

  TaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _freightId = $v.freightId;
      _customerSiteId = $v.customerSiteId;
      _type = $v.type;
      _groupNumber = $v.groupNumber;
      _status = $v.status;
      _id = $v.id;
      _orderNumber = $v.orderNumber;
      _remarks = $v.remarks;
      _routeId = $v.routeId;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _creatorId = $v.creatorId;
      _createdAt = $v.createdAt;
      _lastModifierId = $v.lastModifierId;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Task;
  }

  @override
  void update(void Function(TaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Task build() => _build();

  _$Task _build() {
    final _$result = _$v ??
        new _$Task._(
            freightId: BuiltValueNullFieldError.checkNotNull(
                freightId, r'Task', 'freightId'),
            customerSiteId: BuiltValueNullFieldError.checkNotNull(
                customerSiteId, r'Task', 'customerSiteId'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'Task', 'type'),
            groupNumber: BuiltValueNullFieldError.checkNotNull(
                groupNumber, r'Task', 'groupNumber'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Task', 'status'),
            id: id,
            orderNumber: orderNumber,
            remarks: remarks,
            routeId: routeId,
            startedAt: startedAt,
            finishedAt: finishedAt,
            creatorId: creatorId,
            createdAt: createdAt,
            lastModifierId: lastModifierId,
            modifiedAt: modifiedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
