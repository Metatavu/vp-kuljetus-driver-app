// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freight.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Freight extends Freight {
  @override
  final String senderSiteId;
  @override
  final String recipientSiteId;
  @override
  final String pointOfDepartureSiteId;
  @override
  final String destinationSiteId;
  @override
  final String? id;
  @override
  final int? freightNumber;
  @override
  final String? creatorId;
  @override
  final DateTime? createdAt;
  @override
  final String? lastModifierId;
  @override
  final DateTime? modifiedAt;

  factory _$Freight([void Function(FreightBuilder)? updates]) =>
      (new FreightBuilder()..update(updates))._build();

  _$Freight._(
      {required this.senderSiteId,
      required this.recipientSiteId,
      required this.pointOfDepartureSiteId,
      required this.destinationSiteId,
      this.id,
      this.freightNumber,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        senderSiteId, r'Freight', 'senderSiteId');
    BuiltValueNullFieldError.checkNotNull(
        recipientSiteId, r'Freight', 'recipientSiteId');
    BuiltValueNullFieldError.checkNotNull(
        pointOfDepartureSiteId, r'Freight', 'pointOfDepartureSiteId');
    BuiltValueNullFieldError.checkNotNull(
        destinationSiteId, r'Freight', 'destinationSiteId');
  }

  @override
  Freight rebuild(void Function(FreightBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FreightBuilder toBuilder() => new FreightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Freight &&
        senderSiteId == other.senderSiteId &&
        recipientSiteId == other.recipientSiteId &&
        pointOfDepartureSiteId == other.pointOfDepartureSiteId &&
        destinationSiteId == other.destinationSiteId &&
        id == other.id &&
        freightNumber == other.freightNumber &&
        creatorId == other.creatorId &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, senderSiteId.hashCode);
    _$hash = $jc(_$hash, recipientSiteId.hashCode);
    _$hash = $jc(_$hash, pointOfDepartureSiteId.hashCode);
    _$hash = $jc(_$hash, destinationSiteId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, freightNumber.hashCode);
    _$hash = $jc(_$hash, creatorId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Freight')
          ..add('senderSiteId', senderSiteId)
          ..add('recipientSiteId', recipientSiteId)
          ..add('pointOfDepartureSiteId', pointOfDepartureSiteId)
          ..add('destinationSiteId', destinationSiteId)
          ..add('id', id)
          ..add('freightNumber', freightNumber)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class FreightBuilder implements Builder<Freight, FreightBuilder> {
  _$Freight? _$v;

  String? _senderSiteId;
  String? get senderSiteId => _$this._senderSiteId;
  set senderSiteId(String? senderSiteId) => _$this._senderSiteId = senderSiteId;

  String? _recipientSiteId;
  String? get recipientSiteId => _$this._recipientSiteId;
  set recipientSiteId(String? recipientSiteId) =>
      _$this._recipientSiteId = recipientSiteId;

  String? _pointOfDepartureSiteId;
  String? get pointOfDepartureSiteId => _$this._pointOfDepartureSiteId;
  set pointOfDepartureSiteId(String? pointOfDepartureSiteId) =>
      _$this._pointOfDepartureSiteId = pointOfDepartureSiteId;

  String? _destinationSiteId;
  String? get destinationSiteId => _$this._destinationSiteId;
  set destinationSiteId(String? destinationSiteId) =>
      _$this._destinationSiteId = destinationSiteId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _freightNumber;
  int? get freightNumber => _$this._freightNumber;
  set freightNumber(int? freightNumber) =>
      _$this._freightNumber = freightNumber;

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

  FreightBuilder() {
    Freight._defaults(this);
  }

  FreightBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _senderSiteId = $v.senderSiteId;
      _recipientSiteId = $v.recipientSiteId;
      _pointOfDepartureSiteId = $v.pointOfDepartureSiteId;
      _destinationSiteId = $v.destinationSiteId;
      _id = $v.id;
      _freightNumber = $v.freightNumber;
      _creatorId = $v.creatorId;
      _createdAt = $v.createdAt;
      _lastModifierId = $v.lastModifierId;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Freight other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Freight;
  }

  @override
  void update(void Function(FreightBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Freight build() => _build();

  _$Freight _build() {
    final _$result = _$v ??
        new _$Freight._(
            senderSiteId: BuiltValueNullFieldError.checkNotNull(
                senderSiteId, r'Freight', 'senderSiteId'),
            recipientSiteId: BuiltValueNullFieldError.checkNotNull(
                recipientSiteId, r'Freight', 'recipientSiteId'),
            pointOfDepartureSiteId: BuiltValueNullFieldError.checkNotNull(
                pointOfDepartureSiteId, r'Freight', 'pointOfDepartureSiteId'),
            destinationSiteId: BuiltValueNullFieldError.checkNotNull(
                destinationSiteId, r'Freight', 'destinationSiteId'),
            id: id,
            freightNumber: freightNumber,
            creatorId: creatorId,
            createdAt: createdAt,
            lastModifierId: lastModifierId,
            modifiedAt: modifiedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
