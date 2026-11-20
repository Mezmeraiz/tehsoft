import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

enum MessageStatus { pending, sent, failed }

@freezed
abstract class Message with _$Message {
  const factory Message({
    String? id,
    required String clientId,
    required String author,
    required String text,
    required MessageStatus status,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
