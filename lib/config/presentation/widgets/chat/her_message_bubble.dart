import 'package:flutter/material.dart';

class HerMessagebubble extends StatelessWidget {
  const HerMessagebubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(100),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            'Hola, ¿cómo estás?',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 5),
        const _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/14-cb78bf7104f848794808d61b9cd83eba.gif',
        height: size.height * 0.2,
        width: size.width * 0.7,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            height: size.height * 0.2,
            width: size.width * 0.7,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text('Megan esta enviando una imagen ...'),
          );
        },
      ),
    );
  }
}
