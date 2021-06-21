import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gratitudejournal/routes/routes.dart';
import 'package:gratitudejournal/styling/appColors.dart';
import 'package:stacked/stacked.dart';
import 'journalViewModel.dart';

class JournalView extends StatelessWidget {
  const JournalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<JournalViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.bgColor,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  color: Colors.pink,
                  height: 300,
                  child: Expanded(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                style:
                                    TextStyle(color: AppColors.textFieldColor),
                                text: "I am grateful for..."),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              iconSize: 40,
              color: Colors.white,
              icon: FaIcon(FontAwesomeIcons.cog),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.settingsPage);
              },
            ),
          ],
        ),
      ),
      viewModelBuilder: () => JournalViewModel(),
    );
  }
}
