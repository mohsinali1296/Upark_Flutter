import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:upark/settings/helpSupport.dart';
import 'package:upark/settings/points.dart';
import 'package:upark/settings/profile.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/dialogue_helper.dart';
import 'package:upark/utils/icons.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _notification=true;

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                    child: Text("Settings",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: greyTextColor),)),
                Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.18),
                    padding: EdgeInsets.all(6.0),
                    child: SvgPicture.asset(appLogo2)
                )
              ],
            ),
          ),
        ),
        body: Container(
          height: height,
          color: Colors.white,
          padding: EdgeInsets.only(top:16.0,left: 8.0,right: 8.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Card(
                elevation: 1.0,
                //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context)=>Profile()));
                  },
                  leading: SvgPicture.asset(profileIcon,),
                  title: Text(
                    "My Profile",
                    style: GoogleFonts.rubik(
                      color: greyTextColor,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(context)=>Profile()));
                    },
                  ),
                ),
              ),
              Card(
                elevation: 1.0,
                //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                child: ListTile(
                  leading: SvgPicture.asset(settingsNotificationIcon,),
                  title: Text(
                    "Notification",
                    style: GoogleFonts.rubik(
                        color: greyTextColor,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  trailing: Switch(
                    activeColor: themeColor,
                    value: this._notification,
                    onChanged: (val){
                      setState(() {
                        this._notification=val;
                      });
                    },
                  )
                ),
              ),
              Card(
                elevation: 1.0,
                //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                child: ListTile(
                  onTap: (){
                    DialogueHelper.openRoleDialogueBox(context);
                  },
                  leading: SvgPicture.asset(modeIcon,),
                  title: Text(
                    "Change Mode",
                    style: GoogleFonts.rubik(
                        color: greyTextColor,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                    onPressed: (){
                      DialogueHelper.openRoleDialogueBox(context);
                    },
                  ),
                ),
              ),
              Card(
                elevation: 1.0,
                //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                child: ListTile(
                  onTap: (){
                    DialogueHelper.openChangePasswordDialogueBox(context);
                  },
                  leading: SvgPicture.asset(keyIcon2,),
                  title: Text(
                    "Change Password",
                    style: GoogleFonts.rubik(
                        color: greyTextColor,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                    onPressed: (){
                      DialogueHelper.openChangePasswordDialogueBox(context);
                    },
                  ),
                ),
              ),
              Card(
                elevation: 1.0,
                //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context)=>HelpAndSupport()));
                  },
                  leading: SvgPicture.asset(helpIcon,),
                  title: Text(
                    "Help and Support",
                    style: GoogleFonts.rubik(
                        color: greyTextColor,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(context)=>HelpAndSupport()));
                    },
                  ),
                ),
              ),
              Card(
                elevation: 1.0,
                margin: EdgeInsets.only(top:height*.22),
                child: ListTile(
                  onTap:(){
                    Navigator.pop(context);
                  },
                  title: Text(
                    "Logout",
                    style: GoogleFonts.rubik(
                        color: greyTextColor,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                    trailing:
                    IconButton(
                      icon:SvgPicture.asset(logoutIcon,),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    )
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}




class Settings2 extends StatefulWidget {
  @override
  _Settings2State createState() => _Settings2State();
}

class _Settings2State extends State<Settings2> {
  bool _notification=true;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                    child: Text("Settings",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: greyTextColor),)),
                Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.18),
                    padding: EdgeInsets.all(6.0),
                    child: SvgPicture.asset(appLogo2)
                )
              ],
            ),
          ),
        ),
        body: Container(
            color: Colors.white,
            height: height,
            padding: EdgeInsets.only(top:16.0,left: 8.0,right: 8.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Card(
                  elevation: 1.0,
                  //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(context)=>Profile()));
                    },
                    leading: SvgPicture.asset(profileIcon,),
                    title: Text(
                      "My Profile",
                      style: GoogleFonts.rubik(
                          color: greyTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>Profile()));
                      },
                    ),
                  ),
                ),
                Card(
                  elevation: 1.0,
                  //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                  child: ListTile(
                      leading: SvgPicture.asset(settingsNotificationIcon,),
                      title: Text(
                        "Notification",
                        style: GoogleFonts.rubik(
                            color: greyTextColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      trailing: Switch(
                        activeColor: themeColor,
                        value: this._notification,
                        onChanged: (val){
                          setState(() {
                            this._notification=val;
                          });
                        },
                      )
                  ),
                ),
                Card(
                  elevation: 1.0,
                  //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                  child: ListTile(
                    onTap: (){
                      DialogueHelper.openRoleDialogueBox(context);
                    },
                    leading: SvgPicture.asset(modeIcon,),
                    title: Text(
                      "Change Mode",
                      style: GoogleFonts.rubik(
                          color: greyTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                      onPressed: (){
                        DialogueHelper.openRoleDialogueBox(context);
                      },
                    ),
                  ),
                ),
                Card(
                  elevation: 1.0,
                  //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(context)=>MyPoints()));
                    },
                    leading: SvgPicture.asset(coinIcon,),
                    title: Text(
                      "My Points",
                      style: GoogleFonts.rubik(
                          color: greyTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>MyPoints()));
                      },
                    ),
                  ),
                ),
                Card(
                  elevation: 1.0,
                  //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                  child: ListTile(
                    onTap: (){
                      DialogueHelper.openChangePasswordDialogueBox(context);
                    },
                    leading: SvgPicture.asset(keyIcon2,),
                    title: Text(
                      "Change Password",
                      style: GoogleFonts.rubik(
                          color: greyTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                      onPressed: (){
                        DialogueHelper.openChangePasswordDialogueBox(context);
                      },
                    ),
                  ),
                ),
                Card(
                  elevation: 1.0,
                  //margin: EdgeInsets.only(left: 8.0,right: 8.0),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(context)=>HelpAndSupport()));
                    },
                    leading: SvgPicture.asset(helpIcon,),
                    title: Text(
                      "Help and Support",
                      style: GoogleFonts.rubik(
                          color: greyTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: greyIconColor,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>HelpAndSupport()));
                      },
                    ),
                  ),
                ),
                Card(
                  elevation: 1.0,
                  margin: EdgeInsets.only(top:height*.2),
                  child: ListTile(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    title: Text(
                      "Logout",
                      style: GoogleFonts.rubik(
                          color: greyTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing:
                    IconButton(
                      icon:SvgPicture.asset(logoutIcon,),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    )

                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
