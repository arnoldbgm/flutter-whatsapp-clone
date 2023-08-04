import 'package:flutter_clone_whatsapp/models/chat_message.dart';

import '../models/chat_model.dart';

List<ChatModel> chatList = [
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/2064826/pexels-photo-2064826.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Alice Johnson",
    message: "Hola, ¿cómo estás?",
    time: "09:15",
    countMessage: 2,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/3828256/pexels-photo-3828256.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Bob Smith",
    message: "¡Me encanta Flutter!",
    time: "10:30",
    countMessage: 0,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/2495695/pexels-photo-2495695.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Charlie Brown",
    message: "Nos vemos más tarde",
    time: "11:45",
    countMessage: 5,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/6666811/pexels-photo-6666811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Diana Williams",
    message: "Este es un mensaje de prueba",
    time: "12:00",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/15556876/pexels-photo-15556876/free-photo-of-wood-light-vacation-love.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Eva Martin",
    message: "Hoy será un gran día",
    time: "13:15",
    countMessage: 3,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/6958119/pexels-photo-6958119.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Frank Thomas",
    message: "¿En qué puedo ayudarte?",
    time: "14:30",
    countMessage: 2,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/3526022/pexels-photo-3526022.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "George Davis",
    message: "Gracias por la ayuda",
    time: "15:45",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/7829101/pexels-photo-7829101.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Hannah Wilson",
    message: "Nos vemos mañana",
    time: "16:00",
    countMessage: 1,
    isTyping: true,
  ),
];

List<ChatMessage> chatMessageList = [
  ChatMessage(messageContent: "Hola Juan, como estas?", messageType: "other"),
  ChatMessage(
      messageContent: "Hola, hermano estoy bien tdo ok", messageType: "me"),
  ChatMessage(messageContent: "¡Hola a todos!", messageType: "me"),
  ChatMessage(messageContent: "¿Qué tal están?", messageType: "me"),
  ChatMessage(
      messageContent: "Espero que tengan un buen día", messageType: "me"),
  ChatMessage(
      messageContent: "Me encanta este clon de WhatsApp", messageType: "me"),
  ChatMessage(messageContent: "¡Saludos!", messageType: "me"),
  ChatMessage(
      messageContent: "¡Hola desde el otro lado!", messageType: "other"),
  ChatMessage(messageContent: "¡Hola! ¿Cómo están?", messageType: "me"),
  ChatMessage(messageContent: "Buenas tardes a todos", messageType: "other"),
  ChatMessage(
      messageContent: "¡Que tengan un excelente día!", messageType: "me"),
  ChatMessage(
      messageContent: "Este es un mensaje de prueba", messageType: "other"),
];
