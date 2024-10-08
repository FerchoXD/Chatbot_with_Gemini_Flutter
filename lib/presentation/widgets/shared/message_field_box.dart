
import 'package:chat_bot/config/themes/my_theme.dart';
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key}); 

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(50),
    );

    final inputDecoration = InputDecoration(
        filled: true,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        hintText: 'Escribe un mensaje...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            print('buttom value $textValue');
            textController.clear();
          },
        ),
      );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      style: const TextStyle(color: CustomColors.inputChat),
      cursorColor: CustomColors.inputChat,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}