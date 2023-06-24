import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> _messages = [
    Message(text: 'Hola Megan', fromWho: FromWho.me),
    Message(text: 'Como estas ?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: Implementar el envio de mensajes
  }
}
