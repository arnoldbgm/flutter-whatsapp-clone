import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/data/data_dummy.dart';
import 'package:flutter_clone_whatsapp/models/chat_message.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final TextEditingController _messageControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black12,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "last seen today at 6:00pm",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white60,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Listado de mensajes
          Container(
            color: Colors.grey,
          ),

          ListView.builder(
            itemCount: chatMessageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: chatMessageList[index].messageType != 'me'
                    ? Alignment.topLeft
                    : Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: chatMessageList[index].messageType != 'me'
                        ? Colors.white
                        : Color(0xffD2ECBC),
                    borderRadius: chatMessageList[index].messageType != 'me'
                        ? BorderRadius.only(
                            bottomLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(14.0),
                            topRight: Radius.circular(14.0),
                          )
                        : BorderRadius.only(
                            bottomLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(14.0),
                            topLeft: Radius.circular(14.0),
                          ),
                  ),
                  child: Text(chatMessageList[index].messageContent),
                ),
              );
            },
          ),

          //Soporta el TextField para los datos
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsetsDirectional.symmetric(
                  horizontal: 10, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageControler,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                      cursorColor: Color(0xff065d54),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.emoji_emotions_outlined,
                          size: 30,
                          color: Color(0xff787A79),
                        ),
                        hintText: "Type message",
                        hintStyle:
                            TextStyle(fontSize: 17.0, color: Colors.black38),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file_rounded,
                                color: Color(0xff787A79),
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Color(0xff787A79),
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      chatMessageList.add(
                        ChatMessage(
                            messageContent: _messageControler.text,
                            messageType: "me"),
                      );
                      _messageControler.clear();
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff10C05A),
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
