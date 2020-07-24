import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upark/authentication/signupScreen.dart';
import 'package:upark/initials/policy.dart';
import 'package:upark/services/auth.dart';
import 'package:upark/utils/color.dart';
import 'package:upark/utils/dialogue_helper.dart';
import 'package:upark/utils/images.dart';
import 'package:upark/utils/icons.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_flexible_toast/flutter_flexible_toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;


  //final AuthService _authService = AuthService();

  void showLoginFailedToast() {
    FlutterFlexibleToast.showToast(
        message: "Login Failed!",
        toastLength: Toast.LENGTH_SHORT,
        toastGravity: ToastGravity.CENTER,
        icon: ICON.WARNING,
        backgroundColor: Colors.red,
        fontSize: 16,
        imageSize: 35,
        timeInSeconds: 2);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    String _email='' , _password='';
    //final textController =  new TextEditingController();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regexEmail = new RegExp(emailPattern);

    void _userLogin() async{
//                                                if(!_formKey.currentState.validate()){
//
//                                                }else {
//                                                  _formKey.currentState.save();
//      dynamic result = await _authService.SignIn(_email, _password);
//      if (result != null) {
        DialogueHelper.openAccessDialogue(context);
//      } else {
//        //showLoginFailedToast;
//        showLoginFailedToast();
//        print("Failed");
//      }
      //}
    }

    final TapGestureRecognizer _gestureRecognizer_Signup = TapGestureRecognizer()
      ..onTap = () {

      };
    final TapGestureRecognizer _gestureRecognizer_Terms = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(context, MaterialPageRoute(
            builder:(context)=>PrivacyPolicy()
        ));
      };

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: themeColor,
          statusBarIconBrightness: Brightness.light

      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      width: width,
                      height: height*.37,
                      color: themeColor,
                    ),
                    Positioned(
                      child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
//                              Image.asset(appLogoIcon,
//                                  width: 81.37, height: 104.39),
                                SvgPicture.asset(appLogoIcon,),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 32.0,
                                      left: 16.0,
                                      right: 16.0,
                                      bottom: 32.0),
                                  child: Container(
                                    width: width,
                                    //height: 460.0,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[400],
                                            blurRadius: 4.0,
                                          ),
                                        ],
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(top: 16.0),
                                          child: Text("Sign In",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 22.0,
                                                    color: greyTextColor,
                                                    fontWeight: FontWeight.bold),
                                              )),
                                        ),
                                       Container(
                                         height: height*.083,
                                         padding: EdgeInsets.only(
                                             left: 32.0, right: 32.0, top: 16.0),
                                         child: Hero(
                                           tag: "tag_EmailTextfield",
                                           child: Material(
                                             color: Colors.white,
                                             child: TextField(
                                               autofocus: false,
                                               maxLines: 1,
                                               textDirection: TextDirection.ltr,
                                               onChanged: (value){
                                                 setState(() {
                                                   _email=value;
                                                   print("Email: "+_email);
                                                 });
                                               },
                                               decoration: InputDecoration(
                                                   labelText: "Email",
                                                   labelStyle: TextStyle(
                                                       color: greyTextColor),
                                                   suffixIcon: Icon(
                                                     Icons.mail,
                                                     color: greyIconColor,
                                                   ),
                                                   focusedBorder: OutlineInputBorder(
                                                     borderRadius: BorderRadius.all(
                                                         Radius.circular(5.0)),
                                                     borderSide: BorderSide(
                                                         color:
                                                         new Color(0x3D707070)),
                                                   ),
                                                   enabledBorder: OutlineInputBorder(
                                                     borderRadius: BorderRadius.all(
                                                         Radius.circular(5.0)),
                                                     borderSide: BorderSide(
                                                         color:
                                                         new Color(0x3D707070)),
                                                   )),
                                               //controller: textController,
                                               //onChanged: (text)=>,
                                             ),
                                           ),
                                         ),
                                       ),
                                        Container(
                                          height: height*.083,
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 16.0),
                                          child: Material(
                                            color: Colors.white,
                                            child: TextField(
                                              obscureText: _obscureText,
                                              autofocus: false,
                                              maxLines: 1,
                                              textDirection: TextDirection.ltr,
                                              onChanged: (value){
                                                setState(() {
                                                  _email=value;
                                                  print("Email: "+_email);
                                                });
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Password",
                                                  labelStyle: TextStyle(
                                                      color: greyTextColor),
                                                  suffixIcon: Padding(
                                                    padding: EdgeInsets.all(12.0),
                                                    child: SvgPicture.asset(keyIcon,fit: BoxFit.contain,color: greyIconColor,),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color:
                                                        new Color(0x3D707070)),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(5.0)),
                                                    borderSide: BorderSide(
                                                        color:
                                                        new Color(0x3D707070)),
                                                  )),
                                              //controller: textController,
                                              //onChanged: (text)=>,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 16.0,
                                                right: 32.0,),
                                            child: InkWell(
                                              onTap: () {
                                                DialogueHelper.openForgetPasswordDialogueBox(context);
                                              },
                                              splashColor: Colors.grey,
                                              child: Hero(
                                                tag: "tab_ForgetPassword_Text",
                                                child: Text("Forgot Password?",
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 15.0,
                                                          color: greyTextColor,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: height*.080,
                                          padding: EdgeInsets.only(
                                              left: 32.0, right: 32.0, top: 8.0),
                                          margin: EdgeInsets.only(top:8.0),
                                          child: Hero(
                                            tag: "tag_SignInBtn",
                                            child: MaterialButton(
                                                padding: EdgeInsets.only(
                                                    top: 16.0, bottom: 16.0),
                                                onPressed: () {
                                                  _userLogin();
                                                },
                                                color: themeColor,
                                                elevation: 4.0,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.only(left: width*0.3),
                                                      alignment: Alignment.center,
                                                      child: Text("Sign in",
                                                          style: GoogleFonts.poppins(
                                                            textStyle: TextStyle(
                                                                fontSize: 17.0,
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.w800),
                                                          )),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(right: width*.015),
                                                      child: InkWell(
                                                        onTap: () {
                                                          _userLogin();
                                                        },
                                                        child: SvgPicture.asset(circularArrowIcon,fit: BoxFit.fitHeight,)
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                minWidth: width,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(8.0)))),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 24.0),
                                          child: Hero(
                                            tag: "tag_SignupText",
                                            child: GestureDetector(
                                              onTap: (){},
                                              child: RichText(
                                                text: TextSpan(
                                                    text: "Don't have an account?",
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 15.0,
                                                          color: greyTextColor,
                                                          fontWeight: FontWeight.normal),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: " Sign up",
                                                          recognizer:
                                                              TapGestureRecognizer(
                                                              )..onTap = (){
                                                                Navigator.push(context, MaterialPageRoute(
                                                                    builder:(context)=>Signup()
                                                                ));
                                                              },
                                                          style: GoogleFonts.poppins(
                                                            textStyle: TextStyle(
                                                                fontSize: 15.0,
                                                                color: greyTextColor,
                                                                fontWeight:
                                                                    FontWeight.bold),
                                                          ))
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 16.0, bottom: 24.0),
                                          child: RichText(
                                            text: TextSpan(
                                                text: "You agree with",
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      fontSize: 15.0,
                                                      color: greyTextColor,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: " terms & conditions",
                                                      recognizer:
                                                          _gestureRecognizer_Terms,
                                                      style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            fontSize: 15.0,
                                                            color: greyTextColor,
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ))
                                                ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
