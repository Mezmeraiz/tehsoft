import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tehsoft/models/message.dart';

part 'chat_state.freezed.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({
    @Default('room1') String chatId,
    @Default([]) List<Message> messages,
  }) = _ChatState;
}
