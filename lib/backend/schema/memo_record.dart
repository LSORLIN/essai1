import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'memo_record.g.dart';

abstract class MemoRecord implements Built<MemoRecord, MemoRecordBuilder> {
  static Serializer<MemoRecord> get serializer => _$memoRecordSerializer;

  DocumentReference? get owner;

  String? get description;

  @BuiltValueField(wireName: 'last_edited')
  DateTime? get lastEdited;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  @BuiltValueField(wireName: 'memo_photo_url')
  String? get memoPhotoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MemoRecordBuilder builder) => builder
    ..description = ''
    ..memoPhotoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Memo');

  static Stream<MemoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MemoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MemoRecord._();
  factory MemoRecord([void Function(MemoRecordBuilder) updates]) = _$MemoRecord;

  static MemoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMemoRecordData({
  DocumentReference? owner,
  String? description,
  DateTime? lastEdited,
  DateTime? timeCreated,
  String? memoPhotoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    MemoRecord.serializer,
    MemoRecord(
      (m) => m
        ..owner = owner
        ..description = description
        ..lastEdited = lastEdited
        ..timeCreated = timeCreated
        ..memoPhotoUrl = memoPhotoUrl,
    ),
  );

  return firestoreData;
}
