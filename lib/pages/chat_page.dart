import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/data/data_dummy.dart';
import 'package:flutter_clone_whatsapp/models/chat_model.dart';
import 'package:flutter_clone_whatsapp/widgets/item_chat_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          print(chatList[index]);
          return ItemChatWdidget(
            chatModel: chatList[index],
          );
        },
      ),
    );
  }
}
