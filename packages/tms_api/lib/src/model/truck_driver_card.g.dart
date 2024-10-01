// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truck_driver_card.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TruckDriverCard extends TruckDriverCard {
  @override
  final String id;
  @override
  final int timestamp;

  factory _$TruckDriverCard([void Function(TruckDriverCardBuilder)? updates]) =>
      (new TruckDriverCardBuilder()..update(updates))._build();

  _$TruckDriverCard._({required this.id, required this.timestamp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TruckDriverCard', 'id');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'TruckDriverCard', 'timestamp');
  }

  @override
  TruckDriverCard rebuild(void Function(TruckDriverCardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TruckDriverCardBuilder toBuilder() =>
      new TruckDriverCardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TruckDriverCard &&
        id == other.id &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TruckDriverCard')
          ..add('id', id)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class TruckDriverCardBuilder
    implements Builder<TruckDriverCard, TruckDriverCardBuilder> {
  _$TruckDriverCard? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  TruckDriverCardBuilder() {
    TruckDriverCard._defaults(this);
  }

  TruckDriverCardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TruckDriverCard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TruckDriverCard;
  }

  @override
  void update(void Function(TruckDriverCardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TruckDriverCard build() => _build();

  _$TruckDriverCard _build() {
    final _$result = _$v ??
        new _$TruckDriverCard._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TruckDriverCard', 'id'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'TruckDriverCard', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
