import 'package:flutter/material.dart';
import 'package:yes_no_flutter_app/presentation/screens/chat/chat_screen.dart';
import 'package:yes_no_flutter_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const ChatScreen(),
    );
  }
}
