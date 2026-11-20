import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tehsoft/chat/chat_bloc.dart';
import 'package:tehsoft/chat/chat_event.dart';
import 'package:tehsoft/chat/widgets/message_input.dart';
import 'package:tehsoft/chat/widgets/message_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Чат',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (_) => ChatBloc()..add(ChatEvent.init()),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Чат'),
      ),
      body: const Column(
        children: [
          Expanded(child: MessageList()),
          MessageInput(),
        ],
      ),
    );
  }
}
