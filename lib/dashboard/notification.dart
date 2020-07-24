import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  static LocationNotification notification = new LocationNotification("10-01-2020","New Notification","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.");
  static LocationNotification notification1 = new LocationNotification("11-01-2020","New Notification1","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.");
  static LocationNotification notification2 = new LocationNotification("12-01-2020","New Notification2","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.");
  static LocationNotification notification3 = new LocationNotification("13-01-2020","New Notification3","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.");

  List<LocationNotification> notificationList = [notification,notification1,notification2,notification3,notification,notification1,notification2,notification3,notification,notification1,notification2,notification3,notification,notification1,notification2,notification3,notification,notification1,notification2,notification3,];

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
                    child: Text("Notifications",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: greyTextColor),)),
                Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.09),
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
            itemCount: notificationList.length,
           itemBuilder: (context,index){
              final item = notificationList[index];
              return Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: NotificationsList(item.date,item.title,item.subtitle),
                secondaryActions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: IconSlideAction(
                      color: Colors.redAccent,
                      iconWidget: Icon(Icons.delete,color: Colors.white,size: 30.0,),
                      onTap: (){
                        setState(() {
                          notificationList.removeAt(index);
                        });
                      },
                    ),
                  ),
                ],
              );
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("$item Deleted"),));
           },
          ),
        )
      ),
    );
  }
}


class NotificationsList extends StatelessWidget {

  var _date,_title,_subTitle;

  NotificationsList(this._date,this._title,this._subTitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:4.0,bottom: 4.0,left: 8.0,right: 8.0),
      child: Card(
        color: Colors.white,
        elevation: 1.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(top:2.0,right: 2.0,left: 2.0),
              margin: EdgeInsets.only(right: 4.0),
              child: Text(_date,style: GoogleFonts.rubik(fontSize: 10.0,fontWeight: FontWeight.normal),),
            ),
            ListTile(
              leading: SvgPicture.asset(notificationBellIcon),
              title: Text(_title,style: GoogleFonts.rubik(fontSize: 16,fontWeight: FontWeight.w600,color: darkGreyTextColor) ,),
              subtitle: Text(_subTitle,style: GoogleFonts.rubik(fontSize: 12,fontWeight: FontWeight.normal,color: greyTextColor) ,),
            )
          ],
        ),
      ),
    );
  }
}


class LocationNotification{
  final String date;
  final String title;
  final String subtitle;
  LocationNotification(this.date, this.title, this.subtitle);
}