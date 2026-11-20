import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tehsoft/chat/chat_bloc.dart';
import 'package:tehsoft/chat/chat_state.dart';
import 'package:tehsoft/chat/widgets/message_bubble.dart';

class MessageList extends StatefulWidget {
  const MessageList({super.key});

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatBloc, ChatState>(
      listenWhen: (previous, current) =>
          current.messages.lastOrNull?.clientId !=
          previous.messages.lastOrNull?.clientId,
      listener: (context, state) => _scrollToBottom(),
      child: Builder(
        builder: (context) {
          final messages = context.select((ChatBloc b) => b.state.messages);

          return ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return MessageBubble(
                key: ValueKey(messages[index].clientId),
                message: messages[index],
              );
            },
          );
        },
      ),
    );
  }
}
