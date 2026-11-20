import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tehsoft/models/message.dart';

part 'chat_event.freezed.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.init() = Init;

  const factory ChatEvent.sendMessage({String? text, String? clientId}) =
      SendMessage;

  const factory ChatEvent.updateMessage({required Message message}) =
      UpdateMessage;
}
