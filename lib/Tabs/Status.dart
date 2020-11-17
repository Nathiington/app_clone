import 'package:flutter/material.dart';

import 'Screens/Chatlist.dart';

class Status extends StatelessWidget {
  final List<ChatListItem> chatListItem = [
    ChatListItem(
       profileDP:
            "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQ3Mzg3MjY0ODg2OTA4NTk5/j_cole_photo_by_isaac_brekken_wireimage_getty_503069628.jpg",
        personName: "Jermaine",
        date: "10 minutes ago",
        lastMessage: "beatae quasi sed"),
    ChatListItem(
         profileDP:
            "https://content.web-repository.com/s/3141602482146216/uploads/Images/AG-0628137.png",
        personName: "ShinyStar12",
        date: "10 minutes ago",
        lastMessage: "beatae quasi sed"),
    ChatListItem(
         profileDP:
            "https://static.wikia.nocookie.net/psychology/images/8/83/Godfrey_Kneller_-_Newton_-_1689.jpg/revision/latest?cb=20120604172837",
        personName: "Newton",
        date: "10 minutes ago",
        lastMessage: "beatae quasi sed"),
    ChatListItem(
        profileDP:
            "https://i1.wp.com/www.paudal.com/wp-content/uploads/2020/11/1605548051_Spider-Man-Miles-Morales-pays-tribute-to-actor-Chadwick-Boseman-Black.jpg?fit=1280%2C720&ssl=1",
        personName: "Miles",
        date: "10 minutes ago",
        lastMessage: "beatae quasi sed"),
    ChatListItem(
        profileDP:
            "https://scontent.fgbe3-1.fna.fbcdn.net/v/t1.0-9/27073268_2072770622959647_6391407840538639941_n.jpg?_nc_cat=106&ccb=2&_nc_sid=85a577&_nc_ohc=ZXv1lWT1bWwAX_TUd1R&_nc_ht=scontent.fgbe3-1.fna&oh=7a0cf7430898b152d9170ca2505682b7&oe=5FD8C79D",
        personName: "Clint",
        date: "10 minutes ago",
        lastMessage: "beatae quasi sed"),
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
            onTap: (){},
            title: Text(chatListItem[index].personName ,
            style: TextStyle(color: Color.fromRGBO(161, 161, 161, 1))
            ),
            subtitle: Text(chatListItem[index].date ,
            style: TextStyle(color: Color.fromRGBO(161, 161, 161, 1))
            ),
            leading: Stack(
                    alignment: Alignment(0, 0),
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(71, 191, 131,1),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            chatListItem[index].profileDP
                          ),
                        ),
                      ),
                    ]
            ),
          );
        },
        
        );
  }
}
