// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_truck.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PublicTruck extends PublicTruck {
  @override
  final String plateNumber;
  @override
  final String vin;
  @override
  final String? id;
  @override
  final String? name;

  factory _$PublicTruck([void Function(PublicTruckBuilder)? updates]) =>
      (new PublicTruckBuilder()..update(updates))._build();

  _$PublicTruck._(
      {required this.plateNumber, required this.vin, this.id, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        plateNumber, r'PublicTruck', 'plateNumber');
    BuiltValueNullFieldError.checkNotNull(vin, r'PublicTruck', 'vin');
  }

  @override
  PublicTruck rebuild(void Function(PublicTruckBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublicTruckBuilder toBuilder() => new PublicTruckBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublicTruck &&
        plateNumber == other.plateNumber &&
        vin == other.vin &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, plateNumber.hashCode);
    _$hash = $jc(_$hash, vin.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PublicTruck')
          ..add('plateNumber', plateNumber)
          ..add('vin', vin)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class PublicTruckBuilder implements Builder<PublicTruck, PublicTruckBuilder> {
  _$PublicTruck? _$v;

  String? _plateNumber;
  String? get plateNumber => _$this._plateNumber;
  set plateNumber(String? plateNumber) => _$this._plateNumber = plateNumber;

  String? _vin;
  String? get vin => _$this._vin;
  set vin(String? vin) => _$this._vin = vin;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PublicTruckBuilder() {
    PublicTruck._defaults(this);
  }

  PublicTruckBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plateNumber = $v.plateNumber;
      _vin = $v.vin;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PublicTruck other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PublicTruck;
  }

  @override
  void update(void Function(PublicTruckBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublicTruck build() => _build();

  _$PublicTruck _build() {
    final _$result = _$v ??
        new _$PublicTruck._(
            plateNumber: BuiltValueNullFieldError.checkNotNull(
                plateNumber, r'PublicTruck', 'plateNumber'),
            vin: BuiltValueNullFieldError.checkNotNull(
                vin, r'PublicTruck', 'vin'),
            id: id,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
