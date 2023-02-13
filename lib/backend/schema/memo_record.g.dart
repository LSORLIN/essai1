// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MemoRecord> _$memoRecordSerializer = new _$MemoRecordSerializer();

class _$MemoRecordSerializer implements StructuredSerializer<MemoRecord> {
  @override
  final Iterable<Type> types = const [MemoRecord, _$MemoRecord];
  @override
  final String wireName = 'MemoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MemoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastEdited;
    if (value != null) {
      result
        ..add('last_edited')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('time_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.memoPhotoUrl;
    if (value != null) {
      result
        ..add('memo_photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MemoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MemoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_edited':
          result.lastEdited = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'time_created':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'memo_photo_url':
          result.memoPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MemoRecord extends MemoRecord {
  @override
  final DocumentReference<Object?>? owner;
  @override
  final String? description;
  @override
  final DateTime? lastEdited;
  @override
  final DateTime? timeCreated;
  @override
  final String? memoPhotoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MemoRecord([void Function(MemoRecordBuilder)? updates]) =>
      (new MemoRecordBuilder()..update(updates))._build();

  _$MemoRecord._(
      {this.owner,
      this.description,
      this.lastEdited,
      this.timeCreated,
      this.memoPhotoUrl,
      this.ffRef})
      : super._();

  @override
  MemoRecord rebuild(void Function(MemoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoRecordBuilder toBuilder() => new MemoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoRecord &&
        owner == other.owner &&
        description == other.description &&
        lastEdited == other.lastEdited &&
        timeCreated == other.timeCreated &&
        memoPhotoUrl == other.memoPhotoUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, owner.hashCode), description.hashCode),
                    lastEdited.hashCode),
                timeCreated.hashCode),
            memoPhotoUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MemoRecord')
          ..add('owner', owner)
          ..add('description', description)
          ..add('lastEdited', lastEdited)
          ..add('timeCreated', timeCreated)
          ..add('memoPhotoUrl', memoPhotoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MemoRecordBuilder implements Builder<MemoRecord, MemoRecordBuilder> {
  _$MemoRecord? _$v;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _lastEdited;
  DateTime? get lastEdited => _$this._lastEdited;
  set lastEdited(DateTime? lastEdited) => _$this._lastEdited = lastEdited;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  String? _memoPhotoUrl;
  String? get memoPhotoUrl => _$this._memoPhotoUrl;
  set memoPhotoUrl(String? memoPhotoUrl) => _$this._memoPhotoUrl = memoPhotoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MemoRecordBuilder() {
    MemoRecord._initializeBuilder(this);
  }

  MemoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _description = $v.description;
      _lastEdited = $v.lastEdited;
      _timeCreated = $v.timeCreated;
      _memoPhotoUrl = $v.memoPhotoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoRecord;
  }

  @override
  void update(void Function(MemoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemoRecord build() => _build();

  _$MemoRecord _build() {
    final _$result = _$v ??
        new _$MemoRecord._(
            owner: owner,
            description: description,
            lastEdited: lastEdited,
            timeCreated: timeCreated,
            memoPhotoUrl: memoPhotoUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
