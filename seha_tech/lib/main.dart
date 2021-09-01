import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/models/signInModel.dart';
import 'package:seha_tech/models/userModel.dart';
import 'package:seha_tech/services/signInService.dart';
import 'package:seha_tech/views/medicalProfile/userProfile.dart';
import 'package:seha_tech/views/signIn/mainPageButton.dart';
import 'package:seha_tech/views/signIn/mainPageTextField.dart';
import 'package:seha_tech/views/signup/widgets/forgetPassword.dart';
import 'package:seha_tech/views/signup/widgets/signUpText.dart';
// import 'package:scoped_model/scoped_model.dart';
// import 'models/userModel.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'views/signup/widgets/customDivider.dart';

void main() {
  runApp(MyApp());
}

// UserModel userModel = UserModel ();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(localizationsDelegates: [
      AppLocalizations.delegate, // Add this line
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ], supportedLocales: [
      Locale('en', ''), // English, no country code
      Locale('ar', ''), // Spanish, no country code
    ], home: MyHomePage(title: ''));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

SignInModel signInModel = SignInModel();
UserModel userModel = UserModel();

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LandingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Palette.fifthColor,
        child: Image.asset(
          'assets/images/SehaTech-Logo-Vertical-FullColor.png',
          height: MediaQuery.of(context).size.height * 0.4,
        ));
  }
}

class LandingScreen extends StatelessWidget {
  //gsioo
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.fifthColor,
      body: ScopedModel<SignInModel>(
        model: signInModel,
        child: ListView(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        //width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Image.asset(
                            'assets/images/SehaTech-Logo-Vertical-FullColor.png')),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 40,
                      child: CustomField(
                          textController: textController1,
                          textColor: Palette.forthColor,
                          fillColor: Colors.white,
                          text: AppLocalizations.of(context)!.emailSignIn,
                          obscureText: false,
                          callBackMethod: () =>
                              signInModel.setEmail = signInModel.getTemp),
                    ),

                    // SOOORA
                    ScopedModelDescendant<SignInModel>(
                        builder: (context, child, model) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 40,
                        child: CustomField(
                            textController: textController2,
                            textColor: Palette.forthColor,
                            fillColor: Colors.white,
                            text: AppLocalizations.of(context)!.passwordSignIn,
                            obscureText: true,
                            callBackMethod: () =>
                                signInModel.setPassword = signInModel.getTemp),
                      );
                    }),
                    ScopedModel(
                        model: userModel,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: CustomButton(
                                message:
                                    AppLocalizations.of(context)!.signInText,
                                color: Palette.primaryColor,
                                callBackMethod: () async {
                                  var response = await signIn(
                                      signInModel.getEmail,
                                      signInModel.getPassword,
                                      "payer1.sehatech.org:3000");
                                  if (response["result"] == null) {
                                    userModel.setUserMap = response;
                                    userModel.setToken = response["token"];

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        settings: RouteSettings(name: "/Page1"),
                                        builder: (context) => UserProfile(),
                                      ),
                                    );
                                  }
                                }))),

                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.white,
                                child: Image.asset('assets/images/google.png'),
                                padding: EdgeInsets.all(10),
                                shape: CircleBorder(),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.white,
                                child:
                                    Image.asset('assets/images/facebook.png'),
                                padding: EdgeInsets.all(10),
                                shape: CircleBorder(),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.white,
                                child: Image.asset('assets/images/apple.png'),
                                padding: EdgeInsets.all(10),
                                shape: CircleBorder(),
                              ),
                            ],
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: CustomDivider(dividerColor: Colors.grey[400]),
                    ),

                    Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.6,
                        margin: EdgeInsets.only(top: 15),
                        child: SignUpText()),
                    Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.6,
                        margin: EdgeInsets.only(top: 15),
                        child: ForgetPassword())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
