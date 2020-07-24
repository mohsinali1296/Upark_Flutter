//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:upark/models/user.dart';
//
//class AuthService{
//
//  final FirebaseAuth _auth= FirebaseAuth.instance;
//
//  User _userFromFirebaseUser(FirebaseUser user){
//    return user != null ? User(userId:user.uid,
//        //email: user.email,
//        //name:user.displayName
//    )
//        :null;
//  }
//
//  Future SignInAnonymous() async{
//    try{
//      AuthResult result = await _auth.signInAnonymously();
//      FirebaseUser user = result.user;
//      return _userFromFirebaseUser(user);
//    }catch(e){
//      //print("Exception Error"+e.toString());
//      return null;
//    }
//  }
//
//  Stream<User> get user{
//    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
//  }
//
//  Future SignIn(String email, String password) async{
//    try{
//      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
//      FirebaseUser user = result.user;
//      return _userFromFirebaseUser(user);
//    }
//    catch(e){
//      print("Exception Error"+e.toString());
//      print(e.toString());
//    }
//  }
//
//
//}