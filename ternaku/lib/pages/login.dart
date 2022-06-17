import 'package:flutter/material.dart';
import 'package:ternaku/constants.dart';
import 'package:ternaku/pages/components/rounded_button.dart';
import 'package:ternaku/pages/components/rounded_input_field.dart';
import 'package:ternaku/pages/components/rounded_pass_field.dart';
import 'package:ternaku/pages/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: double.infinity,
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/bookagraphy.png"),
          Container(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              //color: kPrimaryColor,
              height: size.height * 0.4,
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Masuk Akun",
                          style: TextStyle(),
                        ),
                        RoundedInputField(
                            hintText: "email", onChanged: (value) {}),
                        RoundedPassField(
                            onChanged: (value) {}, hintText: "Password"),
                        RoundedButton(
                            text: "Masuk",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Home();
                                  },
                                ),
                              );
                            })
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    )

        //body: Body(),
        );
  }
}
