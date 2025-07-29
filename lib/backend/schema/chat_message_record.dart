import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageRecord extends FirestoreRecord {
  ChatMessageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "chat_message" field.
  DocumentReference? _chatMessage;
  DocumentReference? get chatMessage => _chatMessage;
  bool hasChatMessage() => _chatMessage != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "timetamp" field.
  DateTime? _timetamp;
  DateTime? get timetamp => _timetamp;
  bool hasTimetamp() => _timetamp != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _chatMessage = snapshotData['chat_message'] as DocumentReference?;
    _text = snapshotData['text'] as String?;
    _image = snapshotData['image'] as String?;
    _timetamp = snapshotData['timetamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_message');

  static Stream<ChatMessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessageRecord.fromSnapshot(s));

  static Future<ChatMessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessageRecord.fromSnapshot(s));

  static ChatMessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessageRecordData({
  DocumentReference? user,
  DocumentReference? chatMessage,
  String? text,
  String? image,
  DateTime? timetamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'chat_message': chatMessage,
      'text': text,
      'image': image,
      'timetamp': timetamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessageRecordDocumentEquality implements Equality<ChatMessageRecord> {
  const ChatMessageRecordDocumentEquality();

  @override
  bool equals(ChatMessageRecord? e1, ChatMessageRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.chatMessage == e2?.chatMessage &&
        e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.timetamp == e2?.timetamp;
  }

  @override
  int hash(ChatMessageRecord? e) => const ListEquality()
      .hash([e?.user, e?.chatMessage, e?.text, e?.image, e?.timetamp]);

  @override
  bool isValidKey(Object? o) => o is ChatMessageRecord;
}
