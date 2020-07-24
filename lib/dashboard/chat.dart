import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/models/message_model.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/icons.dart';

import 'chatScreen.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(24.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 2.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 24.0),
                      child: Text("Chat",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: greyTextColor),)),
                  Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.26),
                      padding: EdgeInsets.all(6.0),
                      child: SvgPicture.asset(appLogo2)
                  )
                ],
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 8.0),
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index){
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: chat.sender,
                      ),
                    ),
                  ),
                  child: NewChat(chat.time,chat.sender.imageUrl,chat.sender.name,chat.available,chat.text),
                );
              },
            ),
          )
      ),
    );
  }
}

class NewChat extends StatelessWidget {
  var _date,_image,_username,_available,_message;
  NewChat(this._date,this._image,this._username,this._available,this._message);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(left: 8.0,right: 8.0),
      child: Card(
        color: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              //padding: EdgeInsets.only(left: 4.0),
              margin: EdgeInsets.only(left: 12.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(_image),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0, top: 4.0, bottom: 2.0,left: 4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          _date,
                          style: GoogleFonts.poppins(
                              color: greyTextColor,
                              fontSize: 10.0,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:4.0,top: 2.0,right: 4.0),
                        child: Text(
                          _username,
                          style: GoogleFonts.poppins(
                              color: darkGreyTextColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:4.0,top: 2.0,right: 4.0),
                        child: Text(
                          _available,
                          style: GoogleFonts.poppins(
                              color: darkGreyTextColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:4.0,top: 2.0,right: 4.0),
                        child: Text(
                          _message,
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              color: greyTextColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Chats{
  final String date;
  final String username;
  final String available;
  final String message;
  final String image;
  Chats(this.date, this.username, this.available,this.message,this.image);
}