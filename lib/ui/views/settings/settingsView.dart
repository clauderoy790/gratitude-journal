import 'package:flutter/material.dart';
import 'package:gratitudejournal/routes/routes.dart';
import 'package:gratitudejournal/styling/appColors.dart';
import 'package:stacked/stacked.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'settingsViewModel.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.bgColor,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 0.9,
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  alignment: Alignment.center,
                  child: Container(
                    width: 260,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 70,
                          color: Colors.white,
                          icon: FaIcon(FontAwesomeIcons.dove),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Daily Gratitude',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    style: TextStyle(color: AppColors.textFieldColor),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: AppColors.textFieldColor,
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: AppColors.textFieldColor),
                      fillColor: AppColors.textFieldBgColor,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    style: TextStyle(color: AppColors.textFieldColor),
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.textFieldColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: AppColors.textFieldColor),
                        fillColor: AppColors.textFieldBgColor,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextField(
                    style: TextStyle(color: AppColors.textFieldColor),
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.textFieldColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                        ),
                        labelText: 'Verify password',
                        labelStyle: TextStyle(color: AppColors.textFieldColor),
                        fillColor: AppColors.textFieldBgColor,
                        filled: true),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: double.infinity,
                          height: 65,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RouteManager.journalPage);
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: AppColors.textFieldColor,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SettingsViewModel(),
    );
  }
}
