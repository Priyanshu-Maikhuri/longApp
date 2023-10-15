import 'package:flutter/material.dart';
import 'package:longapp/Auth/Authentication.dart';
import 'package:longapp/Resources/AssetManager.dart';
import 'package:longapp/Resources/RoutesManger.dart';
import 'package:longapp/Resources/TextManager.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Container(
        width: width * 0.6,
        padding: const EdgeInsets.only(top: 10),
        child: ElevatedButton(
            onPressed: () async {
              try {
                showDialog(
                    context: context,
                    builder: (_) => Center(
                            child: CircularProgressIndicator(
                          color: Colors.white,
                        )));
                await Authentication().signInGoogle();

                Navigator.pushNamed(context, RoutesManager.home);
              } catch (e) {
                print(e);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(
                width: 1,
                color: Colors.black,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.01,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                    width: width * 0.08,
                    child: Image.asset(
                      AssetManager.google,
                      fit: BoxFit.contain,
                    )),
                Container(
                  margin: EdgeInsets.only(left: width * 0.02),
                  child: Text(
                    TextManager.signInGoogle,
                    style: TextStyle(
                      fontSize: height * 0.017,
                    ),
                  ),
                ),
              ]),
            )),
      ),
    ));
  }
}
