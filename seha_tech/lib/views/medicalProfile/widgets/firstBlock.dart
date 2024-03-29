import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/main.dart';

class UserInfoBlock extends StatelessWidget {
  const UserInfoBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //String medicalProfile_firstBlock_age;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    userModel.getFirstName +
                                        " " +
                                        userModel.getMiddleName +
                                        " " +
                                        userModel.getLastName,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Insurance ID    ",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Palette.thirdColor,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        userModel.getInsuranceCardId,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            )),
          ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          //   child: Container(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       //rcrossAxisAlignment: CrossAxisAlignment.baseline,
          //       children: [
          //         Column(
          //           children: [
          //             Container(
          //               width: MediaQuery.of(context).size.width * 0.4,
          //               child: Expanded(
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Container(
          //                       child: Icon(Icons.date_range,
          //                           color: Palette.primaryColor),
          //                       padding: const EdgeInsets.all(2.0),
          //                       decoration: new BoxDecoration(
          //                         shape: BoxShape.circle,
          //                         border: new Border.all(
          //                           color: Palette.primaryColor,
          //                           width: 1.0,
          //                         ),
          //                       ),
          //                     ),
          //                     Expanded(
          //                         child: Text("  " +
          //                             AppLocalizations.of(context)!
          //                                 .medicalProfile_firstBlock_age +
          //                             ":")),
          //                     Text(
          //                       "60",
          //                       style: TextStyle(color: Palette.forthColor),
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Container(
          //               width: MediaQuery.of(context).size.width * 0.4,
          //               margin: EdgeInsets.only(top: 10),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Container(
          //                     child: Icon(Icons.height,
          //                         color: Palette.primaryColor),
          //                     padding: const EdgeInsets.all(2.0),
          //                     decoration: new BoxDecoration(
          //                       shape: BoxShape.circle,
          //                       border: new Border.all(
          //                         color: Palette.primaryColor,
          //                         width: 1.0,
          //                       ),
          //                     ),
          //                   ),
          //                   Expanded(
          //                       child: Text("  " +
          //                           AppLocalizations.of(context)!
          //                               .medicalProfile_firstBlock_height +
          //                           ":")),
          //                   Text(
          //                     "175 cm",
          //                     style: TextStyle(color: Palette.forthColor),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             Container(
          //               width: MediaQuery.of(context).size.width * 0.4,
          //               child: Expanded(
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Container(
          //                       child: Icon(Icons.monitor_weight,
          //                           color: Palette.primaryColor),
          //                       padding: const EdgeInsets.all(2.0),
          //                       decoration: new BoxDecoration(
          //                         shape: BoxShape.circle,
          //                         border: new Border.all(
          //                           color: Palette.primaryColor,
          //                           width: 1.0,
          //                         ),
          //                       ),
          //                     ),
          //                     Expanded(
          //                         child: Text("  " +
          //                             AppLocalizations.of(context)!
          //                                 .medicalProfile_firstBlock_weight +
          //                             ":")),
          //                     Text(
          //                       "90 Kg",
          //                       style: TextStyle(color: Palette.forthColor),
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Container(
          //               width: MediaQuery.of(context).size.width * 0.4,
          //               margin: EdgeInsets.only(top: 10),
          //               child: Expanded(
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Container(
          //                       child: Icon(Icons.speed,
          //                           color: Palette.primaryColor),
          //                       padding: const EdgeInsets.all(2.0),
          //                       decoration: new BoxDecoration(
          //                         shape: BoxShape.circle,
          //                         border: new Border.all(
          //                           color: Palette.primaryColor,
          //                           width: 1.0,
          //                         ),
          //                       ),
          //                     ),
          //                     Expanded(
          //                         child: Text("  " +
          //                             AppLocalizations.of(context)!
          //                                 .medicalProfile_firstBlock_bmi +
          //                             ":")),
          //                     Text(
          //                       "29.3",
          //                       style: TextStyle(color: Palette.forthColor),
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
