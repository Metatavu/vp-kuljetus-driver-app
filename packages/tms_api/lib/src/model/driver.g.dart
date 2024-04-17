// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Driver extends Driver {
  @override
  final String? id;
  @override
  final String? displayName;
  @override
  final DateTime? archivedAt;

  factory _$Driver([void Function(DriverBuilder)? updates]) =>
      (new DriverBuilder()..update(updates))._build();

  _$Driver._({this.id, this.displayName, this.archivedAt}) : super._();

  @override
  Driver rebuild(void Function(DriverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverBuilder toBuilder() => new DriverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Driver &&
        id == other.id &&
        displayName == other.displayName &&
        archivedAt == other.archivedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, archivedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Driver')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('archivedAt', archivedAt))
        .toString();
  }
}

class DriverBuilder implements Builder<Driver, DriverBuilder> {
  _$Driver? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DateTime? _archivedAt;
  DateTime? get archivedAt => _$this._archivedAt;
  set archivedAt(DateTime? archivedAt) => _$this._archivedAt = archivedAt;

  DriverBuilder() {
    Driver._defaults(this);
  }

  DriverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _archivedAt = $v.archivedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Driver other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Driver;
  }

  @override
  void update(void Function(DriverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Driver build() => _build();

  _$Driver _build() {
    final _$result = _$v ??
        new _$Driver._(
            id: id, displayName: displayName, archivedAt: archivedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
