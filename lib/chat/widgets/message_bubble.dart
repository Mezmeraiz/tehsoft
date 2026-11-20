import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tehsoft/chat/chat_bloc.dart';
import 'package:tehsoft/chat/chat_event.dart';
import 'package:tehsoft/models/message.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final bubble = Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 320),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 8, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    message.author,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(message.text),
                  const SizedBox(height: 2),
                  MessageStatusIcon(status: message.status),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    if (message.status != MessageStatus.failed) {
      return bubble;
    }

    return PopupMenuButton<String>(
      tooltip: 'Отправить заново',
      itemBuilder: (context) => const [
        PopupMenuItem(value: 'resend', child: Text('Отправить заново')),
      ],
      onSelected: (_) {
        context.read<ChatBloc>().add(
          ChatEvent.sendMessage(clientId: message.clientId),
        );
      },
      child: bubble,
    );
  }
}

class MessageStatusIcon extends StatelessWidget {
  const MessageStatusIcon({super.key, required this.status});

  final MessageStatus status;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimaryContainer;

    return switch (status) {
      MessageStatus.pending => SizedBox(
        width: 14,
        height: 14,
        child: CircularProgressIndicator(strokeWidth: 2, color: color),
      ),
      MessageStatus.sent => Icon(Icons.check, size: 16, color: color),
      MessageStatus.failed => Icon(
        Icons.error_outline,
        size: 16,
        color: Theme.of(context).colorScheme.error,
      ),
    };
  }
}
