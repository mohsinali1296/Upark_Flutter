import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/dashboard/ads.dart';
import 'package:upark/dashboard/chat.dart';
import 'package:upark/dashboard/settings.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/icons.dart';

import 'home.dart';
import 'notification.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  PageController _controller = new PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            //scrollDirection: Axis.horizontal,
            controller: _controller,
            children: <Widget>[
              SeekerHomeScreen(),
              Chat(),
              Notifications(),
              Settings()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 2.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
                _controller.jumpToPage(index);
              });
            },
            selectedItemColor: themeColor,
            selectedIconTheme: IconThemeData(
              color: themeColor,
            ),
            items: [
              BottomNavigationBarItem(
                  title: Text(
                    "Home",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 0 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activehomeicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(activehomeicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 0 ? themeColor : Colors.grey,
                  )),
              BottomNavigationBarItem(
                  title: Text(
                    "Chats",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 1 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activechaticon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(inactivechaticon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 1 ? themeColor : Colors.grey,
                  )),
              BottomNavigationBarItem(
                  title: Text(
                    "Notifications",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 2 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activenotificationicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(inactivenotificationicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 2 ? themeColor : Colors.grey,
                  )),
              BottomNavigationBarItem(
                  title: Text(
                    "Settings",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 3 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activesettingicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(inactivesettingicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 3 ? themeColor : Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


class Dashboard2 extends StatefulWidget {
  @override
  _Dashboard2State createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  PageController _controller = new PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            //scrollDirection: Axis.horizontal,
            controller: _controller,
            children: <Widget>[
             ProviderHomeScreen(),
              Chat(),
              Ads(),
              Settings2()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 2.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
                _controller.jumpToPage(index);
              });
            },
            selectedItemColor: themeColor,
            selectedIconTheme: IconThemeData(
              color: themeColor,
            ),
            items: [
              BottomNavigationBarItem(
                  title: Text(
                    "Home",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 0 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activehomeicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(activehomeicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 0 ? themeColor : Colors.grey,
                  )),
              BottomNavigationBarItem(
                  title: Text(
                    "Chats",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 1 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activechaticon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(inactivechaticon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 1 ? themeColor : Colors.grey,
                  )),
              BottomNavigationBarItem(
                  title: Text(
                    "Ads",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 2 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activeAdIcon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(inactiveAdIcon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 2 ? themeColor : Colors.grey,
                  )),
              BottomNavigationBarItem(
                  title: Text(
                    "Settings",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.016,

                        color: _currentIndex == 3 ? themeColor : Colors.grey),
                  ),
                  activeIcon: SvgPicture.asset(activesettingicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                  ),
                  icon: SvgPicture.asset(inactivesettingicon,
                    height: MediaQuery.of(context).size.height * 0.034,
                    color: _currentIndex == 3 ? themeColor : Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
