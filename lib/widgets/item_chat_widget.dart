import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/models/chat_model.dart';

class ItemChatWdidget extends StatelessWidget {
  ChatModel chatModel;

  ItemChatWdidget({required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          backgroundImage: NetworkImage(chatModel.avatarURL),
          radius: 25,
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          chatModel.isTyping ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: chatModel.isTyping
                ? Color(0xff10C05A)
                : Colors.black.withOpacity(0.45),
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 14,
                color: chatModel.countMessage>0?Color(0xff10C05A):Colors.black.withOpacity(0.45),
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: chatModel.countMessage>0?Color(0xff10C05A):Colors.white, shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Text(
                chatModel.countMessage>0?chatModel.countMessage.toString():"",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
