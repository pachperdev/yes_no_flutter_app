import 'package:flutter/material.dart';

class MyMessagebubble extends StatelessWidget {
  const MyMessagebubble({Key? key}) : super(key: key);

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
          child: const Text(
            'Ole, Megan?',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
