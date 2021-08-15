import 'package:flutter/material.dart';
import 'package:seha_tech/Reusable/palette.dart';
import 'package:seha_tech/views/medicalProfile/widgets/firstBlock.dart';
import 'package:seha_tech/views/medicalprofile/widgets/secondBlock.dart';
import 'package:seha_tech/views/signup/widgets/customDivider.dart';
import './userProfileMainWidget.dart';
import 'widgets/userMainSubContainer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfile createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
  int _viewChange = 1;

  set string(int value) => setState(() => _viewChange = value);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserProfileMainWidget(
          callback: (val) => setState(() => _viewChange = val),
          widgetsList: [
            UserInfoBlock(),
            CustomDivider(dividerColor: Palette.thirdColor),
            _viewChange == 1
                ? userMainSubContainer(
                    callback: (val) => setState(() => _viewChange = val),
                  )
                : MedicalList()
          ],
          title: AppLocalizations.of(context)!
              .medicalProfile_userMainSubContainer_medical),
    );
  }
}