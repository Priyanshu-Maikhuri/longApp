import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:connectivity/connectivity.dart';
import 'package:longapp/Resources/RoutesManger.dart';

class Authentication {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  Future<void> signInGoogle() async {
    // Dialogs.showIndicator(context);

    // Trigger the authentication flow

    var connectivityResult;
    try {
      connectivityResult = await Connectivity().checkConnectivity();
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      print(88);
      if (googleUser == null) {
        print(googleUser);
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication.catchError((error) {
        print(9);
      });

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await auth.signInWithCredential(credential);
      print(userCredential);
    } catch (e) {
      if (connectivityResult == ConnectivityResult.none) {
        print(connectivityResult);
      }
      ;
    }
  }
}
