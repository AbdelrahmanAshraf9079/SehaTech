import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:seha_tech/models/signUpModel.dart';
import 'package:seha_tech/views/signup/signUpTwo.dart';
import 'widgets/customDivider.dart';
import 'widgets/firstBlock.dart';
import 'widgets/secondBlock.dart';
import 'widgets/thirdBlock.dart';
import './widgets/signUpStepWedgit.dart';
import '../../Reusable/palette.dart';

class SignUpOne extends StatefulWidget {
  SignUpOne({Key? key}) : super(key: key);

  @override
  _SignUpOneState createState() => _SignUpOneState();
}

SignUpModel signUpModel = SignUpModel() ;
class _SignUpOneState extends State<SignUpOne> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<SignUpModel>(model: signUpModel, child: _buildContent());
  }

  Widget _buildContent() {
    return ScopedModelDescendant<SignUpModel>(
      builder:(context,child,model) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
            appBar: AppBar(
            title: Text('Sign Up'),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Palette.primaryColor,
            elevation: 0.0,
          ),
          body: Column(children: [
            Container(
                color: Palette.primaryColor,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SignUpStepsWidget(step: 1),
                  ],
                )
                ),
            Expanded(
                child: Container(
              color: Color.fromRGBO(28, 201, 188, 1),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                    child: ListView(
                      children: [
                        NamePhotoBlock(),
                        CustomDivider(dividerColor: Palette.primaryColor),
                        EmailBlock(),
                        CustomDivider(dividerColor: Palette.primaryColor),
                        OtherInfoBlock()
                      ],
                    ),
                  )),
            )),
          ]),
          floatingActionButton:
            FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpTwo()),
                        );
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 35,
                  ),
                  backgroundColor: Palette.primaryColor,
                ),
              ) ;
      }

    );
  }
}
