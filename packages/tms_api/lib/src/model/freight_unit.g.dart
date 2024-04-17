// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freight_unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FreightUnit extends FreightUnit {
  @override
  final String freightId;
  @override
  final String type;
  @override
  final String? id;
  @override
  final double? quantity;
  @override
  final String? contents;
  @override
  final String? reservations;
  @override
  final String? creatorId;
  @override
  final DateTime? createdAt;
  @override
  final String? lastModifierId;
  @override
  final DateTime? modifiedAt;

  factory _$FreightUnit([void Function(FreightUnitBuilder)? updates]) =>
      (new FreightUnitBuilder()..update(updates))._build();

  _$FreightUnit._(
      {required this.freightId,
      required this.type,
      this.id,
      this.quantity,
      this.contents,
      this.reservations,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        freightId, r'FreightUnit', 'freightId');
    BuiltValueNullFieldError.checkNotNull(type, r'FreightUnit', 'type');
  }

  @override
  FreightUnit rebuild(void Function(FreightUnitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FreightUnitBuilder toBuilder() => new FreightUnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FreightUnit &&
        freightId == other.freightId &&
        type == other.type &&
        id == other.id &&
        quantity == other.quantity &&
        contents == other.contents &&
        reservations == other.reservations &&
        creatorId == other.creatorId &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, freightId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, contents.hashCode);
    _$hash = $jc(_$hash, reservations.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FreightUnit')
          ..add('freightId', freightId)
          ..add('type', type)
          ..add('id', id)
          ..add('quantity', quantity)
          ..add('contents', contents)
          ..add('reservations', reservations)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class FreightUnitBuilder implements Builder<FreightUnit, FreightUnitBuilder> {
  _$FreightUnit? _$v;

  String? _freightId;
  String? get freightId => _$this._freightId;
  set freightId(String? freightId) => _$this._freightId = freightId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  String? _contents;
  String? get contents => _$this._contents;
  set contents(String? contents) => _$this._contents = contents;

  String? _reservations;
  String? get reservations => _$this._reservations;
  set reservations(String? reservations) => _$this._reservations = reservations;

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

  FreightUnitBuilder() {
    FreightUnit._defaults(this);
  }

  FreightUnitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _freightId = $v.freightId;
      _type = $v.type;
      _id = $v.id;
      _quantity = $v.quantity;
      _contents = $v.contents;
      _reservations = $v.reservations;
      _creatorId = $v.creatorId;
      _createdAt = $v.createdAt;
      _lastModifierId = $v.lastModifierId;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FreightUnit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FreightUnit;
  }

  @override
  void update(void Function(FreightUnitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FreightUnit build() => _build();

  _$FreightUnit _build() {
    final _$result = _$v ??
        new _$FreightUnit._(
            freightId: BuiltValueNullFieldError.checkNotNull(
                freightId, r'FreightUnit', 'freightId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'FreightUnit', 'type'),
            id: id,
            quantity: quantity,
            contents: contents,
            reservations: reservations,
            creatorId: creatorId,
            createdAt: createdAt,
            lastModifierId: lastModifierId,
            modifiedAt: modifiedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
