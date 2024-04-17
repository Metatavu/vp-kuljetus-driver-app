// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Route extends Route {
  @override
  final String name;
  @override
  final DateTime departureTime;
  @override
  final String? id;
  @override
  final String? truckId;
  @override
  final String? driverId;
  @override
  final String? creatorId;
  @override
  final DateTime? createdAt;
  @override
  final String? lastModifierId;
  @override
  final DateTime? modifiedAt;

  factory _$Route([void Function(RouteBuilder)? updates]) =>
      (new RouteBuilder()..update(updates))._build();

  _$Route._(
      {required this.name,
      required this.departureTime,
      this.id,
      this.truckId,
      this.driverId,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Route', 'name');
    BuiltValueNullFieldError.checkNotNull(
        departureTime, r'Route', 'departureTime');
  }

  @override
  Route rebuild(void Function(RouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteBuilder toBuilder() => new RouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Route &&
        name == other.name &&
        departureTime == other.departureTime &&
        id == other.id &&
        truckId == other.truckId &&
        driverId == other.driverId &&
        creatorId == other.creatorId &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, departureTime.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, truckId.hashCode);
    _$hash = $jc(_$hash, driverId.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Route')
          ..add('name', name)
          ..add('departureTime', departureTime)
          ..add('id', id)
          ..add('truckId', truckId)
          ..add('driverId', driverId)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class RouteBuilder implements Builder<Route, RouteBuilder> {
  _$Route? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _departureTime;
  DateTime? get departureTime => _$this._departureTime;
  set departureTime(DateTime? departureTime) =>
      _$this._departureTime = departureTime;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _truckId;
  String? get truckId => _$this._truckId;
  set truckId(String? truckId) => _$this._truckId = truckId;

  String? _driverId;
  String? get driverId => _$this._driverId;
  set driverId(String? driverId) => _$this._driverId = driverId;

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

  RouteBuilder() {
    Route._defaults(this);
  }

  RouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _departureTime = $v.departureTime;
      _id = $v.id;
      _truckId = $v.truckId;
      _driverId = $v.driverId;
      _creatorId = $v.creatorId;
      _createdAt = $v.createdAt;
      _lastModifierId = $v.lastModifierId;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Route other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Route;
  }

  @override
  void update(void Function(RouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Route build() => _build();

  _$Route _build() {
    final _$result = _$v ??
        new _$Route._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'Route', 'name'),
            departureTime: BuiltValueNullFieldError.checkNotNull(
                departureTime, r'Route', 'departureTime'),
            id: id,
            truckId: truckId,
            driverId: driverId,
            creatorId: creatorId,
            createdAt: createdAt,
            lastModifierId: lastModifierId,
            modifiedAt: modifiedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
