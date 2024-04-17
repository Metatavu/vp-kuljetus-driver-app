// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TruckTypeEnum _$truckTypeEnum_TRUCK = const TruckTypeEnum._('TRUCK');
const TruckTypeEnum _$truckTypeEnum_SEMI_TRUCK =
    const TruckTypeEnum._('SEMI_TRUCK');

TruckTypeEnum _$truckTypeEnumValueOf(String name) {
  switch (name) {
    case 'TRUCK':
      return _$truckTypeEnum_TRUCK;
    case 'SEMI_TRUCK':
      return _$truckTypeEnum_SEMI_TRUCK;
    default:
      return _$truckTypeEnum_SEMI_TRUCK;
  }
}

final BuiltSet<TruckTypeEnum> _$truckTypeEnumValues =
    new BuiltSet<TruckTypeEnum>(const <TruckTypeEnum>[
  _$truckTypeEnum_TRUCK,
  _$truckTypeEnum_SEMI_TRUCK,
]);

Serializer<TruckTypeEnum> _$truckTypeEnumSerializer =
    new _$TruckTypeEnumSerializer();

class _$TruckTypeEnumSerializer implements PrimitiveSerializer<TruckTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TRUCK': 'TRUCK',
    'SEMI_TRUCK': 'SEMI_TRUCK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TRUCK': 'TRUCK',
    'SEMI_TRUCK': 'SEMI_TRUCK',
  };

  @override
  final Iterable<Type> types = const <Type>[TruckTypeEnum];
  @override
  final String wireName = 'TruckTypeEnum';

  @override
  Object serialize(Serializers serializers, TruckTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TruckTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TruckTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Truck extends Truck {
  @override
  final String plateNumber;
  @override
  final TruckTypeEnum type;
  @override
  final String vin;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? activeVehicleId;
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

  factory _$Truck([void Function(TruckBuilder)? updates]) =>
      (new TruckBuilder()..update(updates))._build();

  _$Truck._(
      {required this.plateNumber,
      required this.type,
      required this.vin,
      this.id,
      this.name,
      this.activeVehicleId,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt,
      this.archivedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(plateNumber, r'Truck', 'plateNumber');
    BuiltValueNullFieldError.checkNotNull(type, r'Truck', 'type');
    BuiltValueNullFieldError.checkNotNull(vin, r'Truck', 'vin');
  }

  @override
  Truck rebuild(void Function(TruckBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TruckBuilder toBuilder() => new TruckBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Truck &&
        plateNumber == other.plateNumber &&
        type == other.type &&
        vin == other.vin &&
        id == other.id &&
        name == other.name &&
        activeVehicleId == other.activeVehicleId &&
        creatorId == other.creatorId &&
        createdAt == other.createdAt &&
        lastModifierId == other.lastModifierId &&
        modifiedAt == other.modifiedAt &&
        archivedAt == other.archivedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, plateNumber.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, vin.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, activeVehicleId.hashCode);
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
    return (newBuiltValueToStringHelper(r'Truck')
          ..add('plateNumber', plateNumber)
          ..add('type', type)
          ..add('vin', vin)
          ..add('id', id)
          ..add('name', name)
          ..add('activeVehicleId', activeVehicleId)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt)
          ..add('archivedAt', archivedAt))
        .toString();
  }
}

class TruckBuilder implements Builder<Truck, TruckBuilder> {
  _$Truck? _$v;

  String? _plateNumber;
  String? get plateNumber => _$this._plateNumber;
  set plateNumber(String? plateNumber) => _$this._plateNumber = plateNumber;

  TruckTypeEnum? _type;
  TruckTypeEnum? get type => _$this._type;
  set type(TruckTypeEnum? type) => _$this._type = type;

  String? _vin;
  String? get vin => _$this._vin;
  set vin(String? vin) => _$this._vin = vin;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _activeVehicleId;
  String? get activeVehicleId => _$this._activeVehicleId;
  set activeVehicleId(String? activeVehicleId) =>
      _$this._activeVehicleId = activeVehicleId;

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

  TruckBuilder() {
    Truck._defaults(this);
  }

  TruckBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plateNumber = $v.plateNumber;
      _type = $v.type;
      _vin = $v.vin;
      _id = $v.id;
      _name = $v.name;
      _activeVehicleId = $v.activeVehicleId;
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
  void replace(Truck other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Truck;
  }

  @override
  void update(void Function(TruckBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Truck build() => _build();

  _$Truck _build() {
    final _$result = _$v ??
        new _$Truck._(
            plateNumber: BuiltValueNullFieldError.checkNotNull(
                plateNumber, r'Truck', 'plateNumber'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'Truck', 'type'),
            vin: BuiltValueNullFieldError.checkNotNull(vin, r'Truck', 'vin'),
            id: id,
            name: name,
            activeVehicleId: activeVehicleId,
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
