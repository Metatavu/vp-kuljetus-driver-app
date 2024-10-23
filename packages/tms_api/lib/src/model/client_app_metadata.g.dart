// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_app_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClientAppMetadataDeviceOSEnum _$clientAppMetadataDeviceOSEnum_ANDROID =
    const ClientAppMetadataDeviceOSEnum._('ANDROID');

ClientAppMetadataDeviceOSEnum _$clientAppMetadataDeviceOSEnumValueOf(
    String name) {
  switch (name) {
    case 'ANDROID':
      return _$clientAppMetadataDeviceOSEnum_ANDROID;
    default:
      return _$clientAppMetadataDeviceOSEnum_ANDROID;
  }
}

final BuiltSet<ClientAppMetadataDeviceOSEnum>
    _$clientAppMetadataDeviceOSEnumValues = new BuiltSet<
        ClientAppMetadataDeviceOSEnum>(const <ClientAppMetadataDeviceOSEnum>[
  _$clientAppMetadataDeviceOSEnum_ANDROID,
]);

Serializer<ClientAppMetadataDeviceOSEnum>
    _$clientAppMetadataDeviceOSEnumSerializer =
    new _$ClientAppMetadataDeviceOSEnumSerializer();

class _$ClientAppMetadataDeviceOSEnumSerializer
    implements PrimitiveSerializer<ClientAppMetadataDeviceOSEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ANDROID': 'ANDROID',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ANDROID': 'ANDROID',
  };

  @override
  final Iterable<Type> types = const <Type>[ClientAppMetadataDeviceOSEnum];
  @override
  final String wireName = 'ClientAppMetadataDeviceOSEnum';

  @override
  Object serialize(
          Serializers serializers, ClientAppMetadataDeviceOSEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClientAppMetadataDeviceOSEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClientAppMetadataDeviceOSEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClientAppMetadata extends ClientAppMetadata {
  @override
  final ClientAppMetadataDeviceOSEnum? deviceOS;
  @override
  final String? deviceOSVersion;
  @override
  final String? appVersion;

  factory _$ClientAppMetadata(
          [void Function(ClientAppMetadataBuilder)? updates]) =>
      (new ClientAppMetadataBuilder()..update(updates))._build();

  _$ClientAppMetadata._({this.deviceOS, this.deviceOSVersion, this.appVersion})
      : super._();

  @override
  ClientAppMetadata rebuild(void Function(ClientAppMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientAppMetadataBuilder toBuilder() =>
      new ClientAppMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientAppMetadata &&
        deviceOS == other.deviceOS &&
        deviceOSVersion == other.deviceOSVersion &&
        appVersion == other.appVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceOS.hashCode);
    _$hash = $jc(_$hash, deviceOSVersion.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientAppMetadata')
          ..add('deviceOS', deviceOS)
          ..add('deviceOSVersion', deviceOSVersion)
          ..add('appVersion', appVersion))
        .toString();
  }
}

class ClientAppMetadataBuilder
    implements Builder<ClientAppMetadata, ClientAppMetadataBuilder> {
  _$ClientAppMetadata? _$v;

  ClientAppMetadataDeviceOSEnum? _deviceOS;
  ClientAppMetadataDeviceOSEnum? get deviceOS => _$this._deviceOS;
  set deviceOS(ClientAppMetadataDeviceOSEnum? deviceOS) =>
      _$this._deviceOS = deviceOS;

  String? _deviceOSVersion;
  String? get deviceOSVersion => _$this._deviceOSVersion;
  set deviceOSVersion(String? deviceOSVersion) =>
      _$this._deviceOSVersion = deviceOSVersion;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  ClientAppMetadataBuilder() {
    ClientAppMetadata._defaults(this);
  }

  ClientAppMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceOS = $v.deviceOS;
      _deviceOSVersion = $v.deviceOSVersion;
      _appVersion = $v.appVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientAppMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientAppMetadata;
  }

  @override
  void update(void Function(ClientAppMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientAppMetadata build() => _build();

  _$ClientAppMetadata _build() {
    final _$result = _$v ??
        new _$ClientAppMetadata._(
            deviceOS: deviceOS,
            deviceOSVersion: deviceOSVersion,
            appVersion: appVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
