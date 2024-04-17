// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'towable.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TowableTypeEnum _$towableTypeEnum_TRAILER =
    const TowableTypeEnum._('TRAILER');
const TowableTypeEnum _$towableTypeEnum_SEMI_TRAILER =
    const TowableTypeEnum._('SEMI_TRAILER');
const TowableTypeEnum _$towableTypeEnum_DOLLY =
    const TowableTypeEnum._('DOLLY');

TowableTypeEnum _$towableTypeEnumValueOf(String name) {
  switch (name) {
    case 'TRAILER':
      return _$towableTypeEnum_TRAILER;
    case 'SEMI_TRAILER':
      return _$towableTypeEnum_SEMI_TRAILER;
    case 'DOLLY':
      return _$towableTypeEnum_DOLLY;
    default:
      return _$towableTypeEnum_DOLLY;
  }
}

final BuiltSet<TowableTypeEnum> _$towableTypeEnumValues =
    new BuiltSet<TowableTypeEnum>(const <TowableTypeEnum>[
  _$towableTypeEnum_TRAILER,
  _$towableTypeEnum_SEMI_TRAILER,
  _$towableTypeEnum_DOLLY,
]);

Serializer<TowableTypeEnum> _$towableTypeEnumSerializer =
    new _$TowableTypeEnumSerializer();

class _$TowableTypeEnumSerializer
    implements PrimitiveSerializer<TowableTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TRAILER': 'TRAILER',
    'SEMI_TRAILER': 'SEMI_TRAILER',
    'DOLLY': 'DOLLY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TRAILER': 'TRAILER',
    'SEMI_TRAILER': 'SEMI_TRAILER',
    'DOLLY': 'DOLLY',
  };

  @override
  final Iterable<Type> types = const <Type>[TowableTypeEnum];
  @override
  final String wireName = 'TowableTypeEnum';

  @override
  Object serialize(Serializers serializers, TowableTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TowableTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TowableTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Towable extends Towable {
  @override
  final String plateNumber;
  @override
  final TowableTypeEnum type;
  @override
  final String vin;
  @override
  final String? id;
  @override
  final String? name;
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

  factory _$Towable([void Function(TowableBuilder)? updates]) =>
      (new TowableBuilder()..update(updates))._build();

  _$Towable._(
      {required this.plateNumber,
      required this.type,
      required this.vin,
      this.id,
      this.name,
      this.creatorId,
      this.createdAt,
      this.lastModifierId,
      this.modifiedAt,
      this.archivedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        plateNumber, r'Towable', 'plateNumber');
    BuiltValueNullFieldError.checkNotNull(type, r'Towable', 'type');
    BuiltValueNullFieldError.checkNotNull(vin, r'Towable', 'vin');
  }

  @override
  Towable rebuild(void Function(TowableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TowableBuilder toBuilder() => new TowableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Towable &&
        plateNumber == other.plateNumber &&
        type == other.type &&
        vin == other.vin &&
        id == other.id &&
        name == other.name &&
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
    return (newBuiltValueToStringHelper(r'Towable')
          ..add('plateNumber', plateNumber)
          ..add('type', type)
          ..add('vin', vin)
          ..add('id', id)
          ..add('name', name)
          ..add('creatorId', creatorId)
          ..add('createdAt', createdAt)
          ..add('lastModifierId', lastModifierId)
          ..add('modifiedAt', modifiedAt)
          ..add('archivedAt', archivedAt))
        .toString();
  }
}

class TowableBuilder implements Builder<Towable, TowableBuilder> {
  _$Towable? _$v;

  String? _plateNumber;
  String? get plateNumber => _$this._plateNumber;
  set plateNumber(String? plateNumber) => _$this._plateNumber = plateNumber;

  TowableTypeEnum? _type;
  TowableTypeEnum? get type => _$this._type;
  set type(TowableTypeEnum? type) => _$this._type = type;

  String? _vin;
  String? get vin => _$this._vin;
  set vin(String? vin) => _$this._vin = vin;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  TowableBuilder() {
    Towable._defaults(this);
  }

  TowableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plateNumber = $v.plateNumber;
      _type = $v.type;
      _vin = $v.vin;
      _id = $v.id;
      _name = $v.name;
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
  void replace(Towable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Towable;
  }

  @override
  void update(void Function(TowableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Towable build() => _build();

  _$Towable _build() {
    final _$result = _$v ??
        new _$Towable._(
            plateNumber: BuiltValueNullFieldError.checkNotNull(
                plateNumber, r'Towable', 'plateNumber'),
            type:
                BuiltValueNullFieldError.checkNotNull(type, r'Towable', 'type'),
            vin: BuiltValueNullFieldError.checkNotNull(vin, r'Towable', 'vin'),
            id: id,
            name: name,
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
