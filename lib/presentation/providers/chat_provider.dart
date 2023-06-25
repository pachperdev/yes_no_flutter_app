import 'package:flutter/material.dart';
import 'package:yes_no_flutter_app/domain/helpers/get_yes_no_answer.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final scrollController = ScrollController();
  final List<Message> messagesList = [];
  final GetYesNoAswer getYesNoAswer = GetYesNoAswer();

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messagesList.add(newMessage);

    if (text.endsWith('?')) {
      herReplay();
    }

    notifyListeners();
    scrollToBottom();
  }

  Future<void> herReplay() async {
    final herMessage = await getYesNoAswer.getAnswer();
    messagesList.add(herMessage);
    notifyListeners();
    scrollToBottom();
  }

  Future<void> scrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
