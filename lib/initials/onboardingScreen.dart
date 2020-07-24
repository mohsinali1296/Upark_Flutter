import 'dart:async';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/authentication/loginScreen.dart';
import 'package:upark/authentication/signupScreen.dart';
import 'package:upark/models/onboardingSlides.dart';
import 'package:upark/utils/slide_dots.dart';
import 'package:upark/utils/slide_item.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    var width  = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark
      ),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: slideList.length,
                          itemBuilder: (ctx, i) => SlideItem(i),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  for(int i = 0; i<slideList.length; i++)
                                    if( i == _currentPage )
                                      SlideDots(true)
                                    else
                                      SlideDots(false)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height*0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child:
                             _currentPage==0 ?Container(
                               width: width*.13,
                               color: Colors.white,
                             )
                             :Container(
                               width: width*.13,
                               child: FlatButton(
                                 child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                 ),
                                 padding: const EdgeInsets.only(top: 14.0,bottom: 14.0),
                                 color: Theme.of(context).primaryColor,
                                 textColor: Colors.white,
                                 onPressed: () {
                                   _currentPage--;
                                   _pageController.animateToPage
                                     (
                                     _currentPage,
                                     duration: Duration(milliseconds: 300),
                                     curve: Curves.easeIn,
                                   );
                                 },
                               ),
                             )

                            ),
                            Container(
                              width: width*.50,
                              child: FlatButton(
                                child: Text(
                                  'Sign up now',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.all(15),
                                color: Theme.of(context).primaryColor,
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder:(context)=>Signup()
                                  ));
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                width: width*.13,
                                child: FlatButton(
                                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: const EdgeInsets.only(top: 14.0,bottom: 14.0),
                                  color: Theme.of(context).primaryColor,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    _currentPage++;
                                    _currentPage>2? {
                                      Navigator.pop(context),
                                      Navigator.push(context, MaterialPageRoute(
                                        builder:(context)=>Login()
                                    ))
                                    }:
                                    _pageController.animateToPage
                                      (
                                      _currentPage,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            child: Text(
                              'Skip Now',
                              style: GoogleFonts.poppins(fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(
                                  builder:(context)=>Login()
                              ));
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
