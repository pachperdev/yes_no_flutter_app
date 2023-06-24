import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(25),
    );

    late InputDecoration inputDecoration = InputDecoration(
      hintText: 'Ask Megan something, use "?" to ask',
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      filled: true,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Stack(
        children: [
          TextFormField(
            controller: controller,
            focusNode: focusNode,
            keyboardType: TextInputType.multiline,
            maxLines: 6,
            minLines: 1,
            decoration: inputDecoration,
            onFieldSubmitted: (value) {
              controller.clear();
              focusNode.requestFocus();
            },
            onTapOutside: (event) {
              focusNode.unfocus();
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                controller.clear();
                focusNode.requestFocus();
              },
              icon: const Icon(Icons.send),
            ),
          ),
        ],
      ),
    );
  }
}
