// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Site extends Site {
  @override
  final String name;
  @override
  final String location;
  @override
  final String address;
  @override
  final String postalCode;
  @override
  final String locality;
  @override
  final String? id;
  @override
  final String? additionalInfo;
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

  factory _$Site([void Function(SiteBuilder)? updates]) =>
      (new SiteBuilder()..update(updates))._build();

  _$Site._(
      {required this.name,
      required this.location,
      required this.address,
      required this.postalCode,
      required this.locality,
      this.id,
      this.additionalInfo,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt,
      this.archivedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Site', 'name');
    BuiltValueNullFieldError.checkNotNull(location, r'Site', 'location');
    BuiltValueNullFieldError.checkNotNull(address, r'Site', 'address');
    BuiltValueNullFieldError.checkNotNull(postalCode, r'Site', 'postalCode');
    BuiltValueNullFieldError.checkNotNull(locality, r'Site', 'locality');
  }

  @override
  Site rebuild(void Function(SiteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteBuilder toBuilder() => new SiteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Site &&
        name == other.name &&
        location == other.location &&
        address == other.address &&
        postalCode == other.postalCode &&
        locality == other.locality &&
        id == other.id &&
        additionalInfo == other.additionalInfo &&
        creatorId == other.creatorId &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt &&
        archivedAt == other.archivedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, locality.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
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
    return (newBuiltValueToStringHelper(r'Site')
          ..add('name', name)
          ..add('location', location)
          ..add('address', address)
          ..add('postalCode', postalCode)
          ..add('locality', locality)
          ..add('id', id)
          ..add('additionalInfo', additionalInfo)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt)
          ..add('archivedAt', archivedAt))
        .toString();
  }
}

class SiteBuilder implements Builder<Site, SiteBuilder> {
  _$Site? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _locality;
  String? get locality => _$this._locality;
  set locality(String? locality) => _$this._locality = locality;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

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

  SiteBuilder() {
    Site._defaults(this);
  }

  SiteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _address = $v.address;
      _postalCode = $v.postalCode;
      _locality = $v.locality;
      _id = $v.id;
      _additionalInfo = $v.additionalInfo;
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
  void replace(Site other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Site;
  }

  @override
  void update(void Function(SiteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Site build() => _build();

  _$Site _build() {
    final _$result = _$v ??
        new _$Site._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'Site', 'name'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, r'Site', 'location'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'Site', 'address'),
            postalCode: BuiltValueNullFieldError.checkNotNull(
                postalCode, r'Site', 'postalCode'),
            locality: BuiltValueNullFieldError.checkNotNull(
                locality, r'Site', 'locality'),
            id: id,
            additionalInfo: additionalInfo,
            creatorId: creatorId,
            createdAt: createdAt,
            lastModifierId: lastModifierId,
            modifiedAt: modifiedAt,
            archivedAt: archivedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
