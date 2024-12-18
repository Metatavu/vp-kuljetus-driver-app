// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_app.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientApp extends ClientApp {
  @override
  final String deviceId;
  @override
  final ClientAppStatus status;
  @override
  final ClientAppMetadata metadata;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final DateTime? lastLoginAt;
  @override
  final DateTime? createdAt;
  @override
  final String? lastModifierId;
  @override
  final DateTime? modifiedAt;

  factory _$ClientApp([void Function(ClientAppBuilder)? updates]) =>
      (new ClientAppBuilder()..update(updates))._build();

  _$ClientApp._(
      {required this.deviceId,
      required this.status,
      required this.metadata,
      this.id,
      this.name,
      this.lastLoginAt,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deviceId, r'ClientApp', 'deviceId');
    BuiltValueNullFieldError.checkNotNull(status, r'ClientApp', 'status');
    BuiltValueNullFieldError.checkNotNull(metadata, r'ClientApp', 'metadata');
  }

  @override
  ClientApp rebuild(void Function(ClientAppBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientAppBuilder toBuilder() => new ClientAppBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientApp &&
        deviceId == other.deviceId &&
        status == other.status &&
        metadata == other.metadata &&
        id == other.id &&
        name == other.name &&
        lastLoginAt == other.lastLoginAt &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lastLoginAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastModifierId.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientApp')
          ..add('deviceId', deviceId)
          ..add('status', status)
          ..add('metadata', metadata)
          ..add('id', id)
          ..add('name', name)
          ..add('lastLoginAt', lastLoginAt)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class ClientAppBuilder implements Builder<ClientApp, ClientAppBuilder> {
  _$ClientApp? _$v;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  ClientAppStatus? _status;
  ClientAppStatus? get status => _$this._status;
  set status(ClientAppStatus? status) => _$this._status = status;

  ClientAppMetadataBuilder? _metadata;
  ClientAppMetadataBuilder get metadata =>
      _$this._metadata ??= new ClientAppMetadataBuilder();
  set metadata(ClientAppMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _lastLoginAt;
  DateTime? get lastLoginAt => _$this._lastLoginAt;
  set lastLoginAt(DateTime? lastLoginAt) => _$this._lastLoginAt = lastLoginAt;

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

  ClientAppBuilder() {
    ClientApp._defaults(this);
  }

  ClientAppBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _status = $v.status;
      _metadata = $v.metadata.toBuilder();
      _id = $v.id;
      _name = $v.name;
      _lastLoginAt = $v.lastLoginAt;
      _createdAt = $v.createdAt;
      _lastModifierId = $v.lastModifierId;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientApp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientApp;
  }

  @override
  void update(void Function(ClientAppBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientApp build() => _build();

  _$ClientApp _build() {
    _$ClientApp _$result;
    try {
      _$result = _$v ??
          new _$ClientApp._(
              deviceId: BuiltValueNullFieldError.checkNotNull(
                  deviceId, r'ClientApp', 'deviceId'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ClientApp', 'status'),
              metadata: metadata.build(),
              id: id,
              name: name,
              lastLoginAt: lastLoginAt,
              createdAt: createdAt,
              lastModifierId: lastModifierId,
              modifiedAt: modifiedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientApp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
