// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_app_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClientAppStatus _$WAITING_FOR_APPROVAL =
    const ClientAppStatus._('WAITING_FOR_APPROVAL');
const ClientAppStatus _$APPROVED = const ClientAppStatus._('APPROVED');

ClientAppStatus _$valueOf(String name) {
  switch (name) {
    case 'WAITING_FOR_APPROVAL':
      return _$WAITING_FOR_APPROVAL;
    case 'APPROVED':
      return _$APPROVED;
    default:
      return _$APPROVED;
  }
}

final BuiltSet<ClientAppStatus> _$values =
    new BuiltSet<ClientAppStatus>(const <ClientAppStatus>[
  _$WAITING_FOR_APPROVAL,
  _$APPROVED,
]);

class _$ClientAppStatusMeta {
  const _$ClientAppStatusMeta();
  ClientAppStatus get WAITING_FOR_APPROVAL => _$WAITING_FOR_APPROVAL;
  ClientAppStatus get APPROVED => _$APPROVED;
  ClientAppStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ClientAppStatus> get values => _$values;
}

abstract class _$ClientAppStatusMixin {
  // ignore: non_constant_identifier_names
  _$ClientAppStatusMeta get ClientAppStatus => const _$ClientAppStatusMeta();
}

Serializer<ClientAppStatus> _$clientAppStatusSerializer =
    new _$ClientAppStatusSerializer();

class _$ClientAppStatusSerializer
    implements PrimitiveSerializer<ClientAppStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WAITING_FOR_APPROVAL': 'WAITING_FOR_APPROVAL',
    'APPROVED': 'APPROVED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WAITING_FOR_APPROVAL': 'WAITING_FOR_APPROVAL',
    'APPROVED': 'APPROVED',
  };

  @override
  final Iterable<Type> types = const <Type>[ClientAppStatus];
  @override
  final String wireName = 'ClientAppStatus';

  @override
  Object serialize(Serializers serializers, ClientAppStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClientAppStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClientAppStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
