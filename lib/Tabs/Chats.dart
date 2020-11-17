import 'package:flutter/material.dart';
import 'Screens/Chatlist.dart';

class Chats extends StatelessWidget {
  final List<ChatListItem> chatListItem = [
    ChatListItem(
        profileDP:
            "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQ3Mzg3MjY0ODg2OTA4NTk5/j_cole_photo_by_isaac_brekken_wireimage_getty_503069628.jpg",
        personName: "Jermaine",
        date: "9:10 am",
        lastMessage: "Cole World"),
    ChatListItem(
        profileDP:
            "https://static.hiphopdx.com/2019/03/chance-the-rapper-new-album-release-date-e1552502447567-829x620.jpg",
        personName: "Chancellor",
        date: "9:10 am",
        lastMessage: "Ahh"),
    ChatListItem(
        profileDP:
            "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Cecilia",
        date: "9:10 am",
        lastMessage: "Hello"),
    ChatListItem(
        profileDP:
            "https://content.web-repository.com/s/3141602482146216/uploads/Images/AG-0628137.png",
        personName: "ShinyStar12",
        date: "9:10 am",
        lastMessage: "Hi hi hi"),
    ChatListItem(
        profileDP:
            "https://thumbs.dreamstime.com/z/alexander-great-macedon-vector-sketch-portrait-189408628.jpg",
        personName: "Alexander the Great",
        date: "9:10 am",
        lastMessage: "I conquered "),
    ChatListItem(
        profileDP:
            "https://static.wikia.nocookie.net/psychology/images/8/83/Godfrey_Kneller_-_Newton_-_1689.jpg/revision/latest?cb=20120604172837",
        personName: "Newton",
        date: "9:10 am",
        lastMessage: "Thinking of becoming a lawyer.Thoughts?"),
    ChatListItem(
        profileDP:
            "https://images.pexels.com/photos/2613260/pexels-photo-2613260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Novella",
        date: "9:10 am",
        lastMessage: "Hey"),
    ChatListItem(
        profileDP:
            "https://images.pexels.com/photos/2100035/pexels-photo-2100035.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Charlie",
        date: "9:10 am",
        lastMessage: "Good Luck"),
    ChatListItem(
        profileDP:
            "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTIwNjA4NjMzODE2OTA5MzI0/sigmund-freud-9302400-1-402.jpg",
        personName: "Sigmund",
        date: "9:10 am",
        lastMessage: "Freud"),
    ChatListItem(
        profileDP:
            "https://images.pexels.com/photos/2787341/pexels-photo-2787341.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Connie",
        date: "9:10 am",
        lastMessage: "Made another million"),
    ChatListItem(
        profileDP:
            "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Loma",
        date: "9:10 am",
        lastMessage: "Got bitten by a dog"),
    ChatListItem(
        profileDP:
            "https://images.pexels.com/photos/999515/pexels-photo-999515.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        personName: "Clarabelle",
        date: "9:10 am",
        lastMessage: "Are you free?"),
    ChatListItem(
        profileDP:
            "https://www.nappy.co/wp-content/uploads/2018/05/foto-4.png",
        personName: "Darrell",
        date: "9:10 am",
        lastMessage: "Don't forget"),
    ChatListItem(
        profileDP:
            "https://i1.wp.com/www.paudal.com/wp-content/uploads/2020/11/1605548051_Spider-Man-Miles-Morales-pays-tribute-to-actor-Chadwick-Boseman-Black.jpg?fit=1280%2C720&ssl=1",
        personName: "Miles",
        date: "9:10 am",
        lastMessage: "I AM SPIDERMAN"),
    ChatListItem(
        profileDP:
            "https://scontent.fgbe3-1.fna.fbcdn.net/v/t1.0-9/27073268_2072770622959647_6391407840538639941_n.jpg?_nc_cat=106&ccb=2&_nc_sid=85a577&_nc_ohc=ZXv1lWT1bWwAX_TUd1R&_nc_ht=scontent.fgbe3-1.fna&oh=7a0cf7430898b152d9170ca2505682b7&oe=5FD8C79D",
        personName: "Clint",
        date: "9:10 am",
        lastMessage: "He's not Spiderman"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
       
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: chatListItem.length,
         itemBuilder: (context, index) {
          return ListTile(
            title: Text(chatListItem[index].personName ,
            style: TextStyle(color: Color.fromRGBO(161, 161, 161, 1))),
            subtitle: Text(chatListItem[index].lastMessage ,
            style: TextStyle(color: Color.fromRGBO(161, 161, 161, 1))),
            trailing: Text(chatListItem[index].date ,
            style: TextStyle(color: Color.fromRGBO(161, 161, 161, 1))),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                chatListItem[index].profileDP
              ),
            ),
            onTap: (){},
          );
        },
        );
  }
}
