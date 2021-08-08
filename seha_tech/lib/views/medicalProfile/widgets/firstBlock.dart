import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserInfoBlock extends StatelessWidget {
  const UserInfoBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String medicalProfile_firstBlock_age;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    // width: MediaQuery.of(context).size.width*0.2,
                    // height: MediaQuery.of(context).size.height*0.2,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width*0.11,
                      backgroundImage: NetworkImage(
                          "https://images.squarespace-cdn.com/content/v1/5528a968e4b02ed06b8e918e/1457461776220-3S9QKRBE7K7XFMG6LX0P/W_Dave.jpg?format=1000w"),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: new Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          'Mohamed',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Palette.forthColor,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dotted,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          '15-22651',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Palette.forthColor,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dotted,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //rcrossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Icon(Icons.date_range,
                                    color: Palette.primaryColor),
                                padding: const EdgeInsets.all(2.0),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: new Border.all(
                                    color: Palette.primaryColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              Expanded(child: Text("  " +AppLocalizations.of(context)!
                                  .medicalProfile_firstBlock_age + ":")),
                              Text(
                                "60",
                                style: TextStyle(color: Palette.forthColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Icon(Icons.height,
                                    color: Palette.primaryColor),
                                padding: const EdgeInsets.all(2.0),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: new Border.all(
                                    color: Palette.primaryColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              Expanded(child: Text("  " +AppLocalizations.of(context)!
                                  .medicalProfile_firstBlock_height + ":")),
                              Text(
                                "175 cm",
                                style: TextStyle(color: Palette.forthColor),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Icon(Icons.monitor_weight,
                                    color: Palette.primaryColor),
                                padding: const EdgeInsets.all(2.0),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: new Border.all(
                                    color: Palette.primaryColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              Expanded(child: Text("  " +AppLocalizations.of(context)!
                                  .medicalProfile_firstBlock_weight + ":")),
                              Text(
                                "90 Kg",
                                style: TextStyle(color: Palette.forthColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Icon(Icons.speed,
                                    color: Palette.primaryColor),
                                padding: const EdgeInsets.all(2.0),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: new Border.all(
                                    color: Palette.primaryColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              Expanded(child: Text("  " +AppLocalizations.of(context)!
                                  .medicalProfile_firstBlock_bmi + ":")),
                              Text(
                                "29.3",
                                style: TextStyle(color: Palette.forthColor),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
