import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tehsoft/chat/chat_event.dart';
import 'package:tehsoft/chat/chat_state.dart';
import 'package:tehsoft/models/message.dart';
import 'package:uuid/uuid.dart';

const int _attemptCount = 1;

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState(chatId: 'room1')) {
    on<SendMessage>(_onSendMessage);
    on<UpdateMessage>(_onUpdateMessage);
    on<Init>(_onInit);
  }

  final Map<String, int> _attempts = {};

  void _onInit(Init event, Emitter<ChatState> emit) =>
      emit(state.copyWith(messages: _seedMessages));

  Future<void> _onSendMessage(
    SendMessage event,
    Emitter<ChatState> emit,
  ) async {
    if (event.text == null && event.clientId == null) {
      throw Exception('Invalid event');
    }

    Message message;

    if (event.clientId != null) {
      final index = state.messages.indexWhere(
        (m) => m.clientId == event.clientId,
      );
      if (index == -1) return;

      final existing = state.messages[index];
      if (existing.status == MessageStatus.pending) return;

      final updatedMessage = existing.copyWith(
        status: MessageStatus.pending,
      );
      final updatedMessages = [...state.messages]..[index] = updatedMessage;

      message = updatedMessage;
      emit(state.copyWith(messages: updatedMessages));
    } else {
      final clientId = const Uuid().v4();

      message = Message(
        clientId: clientId,
        author: 'Max',
        text: event.text!,
        status: MessageStatus.pending,
      );

      emit(state.copyWith(messages: [...state.messages, message]));
    }

    try {
      await _sendMessage(message);
    } catch (e) {
      final index = state.messages.indexWhere(
        (m) => m.clientId == message.clientId,
      );
      if (index == -1) return;

      final failedMessage = state.messages[index].copyWith(
        status: MessageStatus.failed,
      );
      final updatedMessages = [...state.messages]..[index] = failedMessage;

      emit(state.copyWith(messages: updatedMessages));
    }
  }

  void _onUpdateMessage(UpdateMessage event, Emitter<ChatState> emit) {
    final incoming = event.message;

    final index = state.messages.indexWhere((m) {
      if (incoming.id != null && m.id == incoming.id) {
        return true;
      }

      return m.clientId == incoming.clientId;
    });

    final messages = [...state.messages];

    if (index != -1) {
      messages[index] = incoming;
    } else {
      messages.add(incoming);
    }

    emit(state.copyWith(messages: messages));
  }

  Future<void> _sendMessage(Message message) async {
    await Future<void>.delayed(const Duration(milliseconds: 800));

    if ((_attempts[message.clientId] ?? 1) > _attemptCount) {
      add(
        UpdateMessage(
          message: message.copyWith(
            id: message.clientId,
            status: MessageStatus.sent,
          ),
        ),
      );
    } else {
      _attempts[message.clientId] = (_attempts[message.clientId] ?? 1) + 1;
      throw Exception('Network error');
    }
  }
}

const _seedMessages = <Message>[
  Message(
    id: 'msg-1',
    clientId: 'msg-1',
    author: 'Max',
    text: '1',
    status: MessageStatus.sent,
  ),
  Message(
    id: 'msg-2',
    clientId: 'msg-2',
    author: 'Max',
    text: '2',
    status: MessageStatus.sent,
  ),
  Message(
    id: 'msg-3',
    clientId: 'msg-3',
    author: 'Max',
    text: '3',
    status: MessageStatus.sent,
  ),
  Message(
    id: 'msg-4',
    clientId: 'msg-4',
    author: 'Max',
    text: '4',
    status: MessageStatus.sent,
  ),
  Message(
    id: 'msg-5',
    clientId: 'msg-5',
    author: 'Max',
    text: '5',
    status: MessageStatus.sent,
  ),
  Message(
    id: 'msg-6',
    clientId: 'msg-6',
    author: 'Max',
    text: '6',
    status: MessageStatus.sent,
  ),
  Message(
    id: 'msg-7',
    clientId: 'msg-7',
    author: 'Max',
    text: '7',
    status: MessageStatus.sent,
  ),
];
