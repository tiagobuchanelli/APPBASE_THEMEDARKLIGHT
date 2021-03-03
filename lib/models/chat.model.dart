class ChatModel {
  String idchat;
  String userSender;
  int idEvent; //0 recebido, 01 Enviado
  String date;
  String chat;
  String imageUser;

  ChatModel(this.idchat, this.userSender, this.date, this.chat, this.imageUser,
      this.idEvent);
}
