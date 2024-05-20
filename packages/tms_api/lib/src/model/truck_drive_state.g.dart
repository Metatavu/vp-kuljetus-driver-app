// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_drive_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TruckDriveState extends TruckDriveState {
  @override
  final int timestamp;
  @override
  final TruckDriveStateEnum state;
  @override
  final String? id;
  @override
  final String? driverId;
  @override
  final String? driverCardId;

  factory _$TruckDriveState([void Function(TruckDriveStateBuilder)? updates]) =>
      (new TruckDriveStateBuilder()..update(updates))._build();

  _$TruckDriveState._(
      {required this.timestamp,
      required this.state,
      this.id,
      this.driverId,
      this.driverCardId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'TruckDriveState', 'timestamp');
    BuiltValueNullFieldError.checkNotNull(state, r'TruckDriveState', 'state');
  }

  @override
  TruckDriveState rebuild(void Function(TruckDriveStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TruckDriveStateBuilder toBuilder() =>
      new TruckDriveStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TruckDriveState &&
        timestamp == other.timestamp &&
        state == other.state &&
        id == other.id &&
        driverId == other.driverId &&
        driverCardId == other.driverCardId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, driverId.hashCode);
    _$hash = $jc(_$hash, driverCardId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TruckDriveState')
          ..add('timestamp', timestamp)
          ..add('state', state)
          ..add('id', id)
          ..add('driverId', driverId)
          ..add('driverCardId', driverCardId))
        .toString();
  }
}

class TruckDriveStateBuilder
    implements Builder<TruckDriveState, TruckDriveStateBuilder> {
  _$TruckDriveState? _$v;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  TruckDriveStateEnum? _state;
  TruckDriveStateEnum? get state => _$this._state;
  set state(TruckDriveStateEnum? state) => _$this._state = state;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _driverId;
  String? get driverId => _$this._driverId;
  set driverId(String? driverId) => _$this._driverId = driverId;

  String? _driverCardId;
  String? get driverCardId => _$this._driverCardId;
  set driverCardId(String? driverCardId) => _$this._driverCardId = driverCardId;

  TruckDriveStateBuilder() {
    TruckDriveState._defaults(this);
  }

  TruckDriveStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _state = $v.state;
      _id = $v.id;
      _driverId = $v.driverId;
      _driverCardId = $v.driverCardId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TruckDriveState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TruckDriveState;
  }

  @override
  void update(void Function(TruckDriveStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TruckDriveState build() => _build();

  _$TruckDriveState _build() {
    final _$result = _$v ??
        new _$TruckDriveState._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'TruckDriveState', 'timestamp'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'TruckDriveState', 'state'),
            id: id,
            driverId: driverId,
            driverCardId: driverCardId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
