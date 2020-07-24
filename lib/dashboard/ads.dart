import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/utils/bottomsheet_helper.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/dropdownmenu.dart';
import 'package:upark/utils/icons.dart';

import 'notification.dart';

class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {

  static Ad_Item ad = new Ad_Item("Parking Avaiable","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do","250 m","Available in 20 mints");
  static Ad_Item ad1 = new Ad_Item("Parking Avaiable","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do","300 m","Available in 20 mints");
  static Ad_Item ad2 = new Ad_Item("Parking Avaiable","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do","150 m","Available in 20 mints");
  static Ad_Item ad3 = new Ad_Item("Parking Avaiable","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do","50 m","Available in 20 mints");
  static Ad_Item ad4 = new Ad_Item("Parking Avaiable","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do","100 m","Available in 20 mints");

  List<Ad_Item> adList = [ad,ad1,ad2,ad3,ad4];


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
                      child: Text("Ads",style: GoogleFonts.rubik(fontSize: 18.0,fontWeight: FontWeight.w600,color: greyTextColor),)),
                  Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.28),
                      padding: EdgeInsets.all(6.0),
                      child: SvgPicture.asset(appLogo2)
                  ),
                  Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.30),
                      padding: EdgeInsets.all(6.0),
                      child: InkWell(child: SvgPicture.asset(notificationIcon,height: 24.0,width: 24.0,),onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>Notifications()));
                      },)
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 8.0),
            child: ListView.builder(
              itemCount: adList.length,
              itemBuilder: (context,index){
                final item = adList[index];
                return Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  child: GestureDetector(
                      onTap: (){
                        BottomSheet_Helper.openParkingDetails_BottomSheet(context);
                      },
                      child: AdList(item.title,item.subTitle,item.distance,item.time)),
                  secondaryActions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: IconSlideAction(
                        color: Colors.redAccent,
                        iconWidget: Icon(Icons.delete,color: Colors.white,size: 30.0,),
                        onTap: (){
                          setState(() {
                            adList.removeAt(index);
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

class AdList extends StatelessWidget {
  var _title,_subTitle,_distance,_time;
  AdList(this._title,this._subTitle,this._distance,this._time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:4.0,bottom: 4.0,left: 16.0,right: 16.0),
      child: Card(
        color: Colors.white,
        elevation: 1.0,
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(greyParkingIcon,height: 70.0,width: 55.0,),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top:4.0,),
                        child: Text(
                          _title,
                          style: GoogleFonts.rubik(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: darkGreyTextColor,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top:4.0,right: 4.0),
                        //margin: EdgeInsets.only(top:2.0,right: 4.0),
                        child: Text(
                          _subTitle,
                          maxLines: 2,
                          style: GoogleFonts.rubik(
                            fontSize: 11.0,
                            fontWeight: FontWeight.normal,
                            color: greyTextColor,
                          ),
                        ),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.near_me,
                                  size: 15.0,
                                  color: blueTextColor,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "200 m",
                                    style: GoogleFonts.rubik(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      color: blueTextColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.directions_car,
                                  size: 15.0,
                                  color: blueTextColor,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "Available in 20 mints",
                                    style: GoogleFonts.rubik(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      color: blueTextColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            PopupMenuButton(
                              onSelected: (ParkingMenu menu){
                                if(menu.id==1){

                                }else{

                                }
                              },
                              icon: Icon(Icons.more_vert, color: themeColor,),
                              itemBuilder: (BuildContext context){
                                return ParkingMenu.parkingMenu_List().map<PopupMenuItem<ParkingMenu>>((menu) => PopupMenuItem(
                                  value: menu,
                                  child: Container(
                                      color: Colors.white,child: menu.widget
                                  ),
                                )).toList();
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Ad_Item{
  final String title;
  final String subTitle;
  final String distance;
  final String time;
  Ad_Item(this.title, this.subTitle, this.distance,this.time);
}