// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkType extends WorkType {
  @override
  final String name;
  @override
  final WorkTypeCategory category;
  @override
  final String? id;

  factory _$WorkType([void Function(WorkTypeBuilder)? updates]) =>
      (new WorkTypeBuilder()..update(updates))._build();

  _$WorkType._({required this.name, required this.category, this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'WorkType', 'name');
    BuiltValueNullFieldError.checkNotNull(category, r'WorkType', 'category');
  }

  @override
  WorkType rebuild(void Function(WorkTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkTypeBuilder toBuilder() => new WorkTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkType &&
        name == other.name &&
        category == other.category &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkType')
          ..add('name', name)
          ..add('category', category)
          ..add('id', id))
        .toString();
  }
}

class WorkTypeBuilder implements Builder<WorkType, WorkTypeBuilder> {
  _$WorkType? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WorkTypeCategory? _category;
  WorkTypeCategory? get category => _$this._category;
  set category(WorkTypeCategory? category) => _$this._category = category;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  WorkTypeBuilder() {
    WorkType._defaults(this);
  }

  WorkTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _category = $v.category;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkType;
  }

  @override
  void update(void Function(WorkTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkType build() => _build();

  _$WorkType _build() {
    final _$result = _$v ??
        new _$WorkType._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WorkType', 'name'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'WorkType', 'category'),
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
