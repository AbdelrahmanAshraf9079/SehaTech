import 'package:flutter/material.dart';
import '../../../Reusable/reusableWidgets.dart';
import '../../../Reusable/palette.dart';
import 'customtextbox.dart';

class EmailBlock extends StatelessWidget {
  const EmailBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 5,
        alignment: Alignment.center,
        padding: new EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 15,
            20, 15, MediaQuery.of(context).size.width / 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                          text: 'E-mail:',
                          size: 15.0,
                          color: Palette.forthColor),
                      CustomText(
                          text: 'Password:',
                          size: 15.0,
                          color: Palette.forthColor),
                      CustomText(
                          text: 'Confirm Password:',
                          size: 15.0,
                          color: Palette.forthColor),
                    ])),
            Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBox(
                          message: 'Enter A Valid E-mail',
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 30,
                          obscureText: false,
                          keyboardType: TextInputType.name),
                      TextBox(
                          message: 'Enter A Valid Password',
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 30,
                          obscureText: true,
                          keyboardType: TextInputType.name),
                      TextBox(
                          message: 'Confirm Your Password',
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 30,
                          obscureText: true,
                          keyboardType: TextInputType.name)
                    ]))
          ],
        ));
  }
}
