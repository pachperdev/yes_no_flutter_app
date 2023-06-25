import 'package:flutter/material.dart';
import 'package:yes_no_flutter_app/domain/entities/message.dart';

class MyMessagebubble extends StatelessWidget {
  final Message message;
  const MyMessagebubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(100),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
