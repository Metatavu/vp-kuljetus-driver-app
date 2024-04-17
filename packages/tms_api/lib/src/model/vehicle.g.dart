// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Vehicle extends Vehicle {
  @override
  final String truckId;
  @override
  final BuiltList<String> towableIds;
  @override
  final String? id;
  @override
  final String? creatorId;
  @override
  final DateTime? createdAt;
  @override
  final String? lastModifierId;
  @override
  final DateTime? modifiedAt;
  @override
  final DateTime? archivedAt;

  factory _$Vehicle([void Function(VehicleBuilder)? updates]) =>
      (new VehicleBuilder()..update(updates))._build();

  _$Vehicle._(
      {required this.truckId,
      required this.towableIds,
      this.id,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt,
      this.archivedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(truckId, r'Vehicle', 'truckId');
    BuiltValueNullFieldError.checkNotNull(towableIds, r'Vehicle', 'towableIds');
  }

  @override
  Vehicle rebuild(void Function(VehicleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehicleBuilder toBuilder() => new VehicleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vehicle &&
        truckId == other.truckId &&
        towableIds == other.towableIds &&
        id == other.id &&
        creatorId == other.creatorId &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt &&
        archivedAt == other.archivedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, truckId.hashCode);
    _$hash = $jc(_$hash, towableIds.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, archivedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Vehicle')
          ..add('truckId', truckId)
          ..add('towableIds', towableIds)
          ..add('id', id)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt)
          ..add('archivedAt', archivedAt))
        .toString();
  }
}

class VehicleBuilder implements Builder<Vehicle, VehicleBuilder> {
  _$Vehicle? _$v;

  String? _truckId;
  String? get truckId => _$this._truckId;
  set truckId(String? truckId) => _$this._truckId = truckId;

  ListBuilder<String>? _towableIds;
  ListBuilder<String> get towableIds =>
      _$this._towableIds ??= new ListBuilder<String>();
  set towableIds(ListBuilder<String>? towableIds) =>
      _$this._towableIds = towableIds;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  DateTime? _archivedAt;
  DateTime? get archivedAt => _$this._archivedAt;
  set archivedAt(DateTime? archivedAt) => _$this._archivedAt = archivedAt;

  VehicleBuilder() {
    Vehicle._defaults(this);
  }

  VehicleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _truckId = $v.truckId;
      _towableIds = $v.towableIds.toBuilder();
      _id = $v.id;
      _creatorId = $v.creatorId;
      _createdAt = $v.createdAt;
      _lastModifierId = $v.lastModifierId;
      _modifiedAt = $v.modifiedAt;
      _archivedAt = $v.archivedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vehicle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Vehicle;
  }

  @override
  void update(void Function(VehicleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Vehicle build() => _build();

  _$Vehicle _build() {
    _$Vehicle _$result;
    try {
      _$result = _$v ??
          new _$Vehicle._(
              truckId: BuiltValueNullFieldError.checkNotNull(
                  truckId, r'Vehicle', 'truckId'),
              towableIds: towableIds.build(),
              id: id,
              creatorId: creatorId,
              createdAt: createdAt,
              lastModifierId: lastModifierId,
              modifiedAt: modifiedAt,
              archivedAt: archivedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'towableIds';
        towableIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Vehicle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
