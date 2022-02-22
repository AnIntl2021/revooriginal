import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:revoo/Employee/employeedash202.dart';

import 'package:revoo/First/welcomscreen.dart';
import 'package:revoo/Login/login.dart';
import 'package:revoo/ProjectManagement/profile/userProfileTeams.dart';
import 'package:revoo/ProjectManagement/profile/userProjectsProfile.dart';
import 'package:revoo/WelcomeScreens/SplashScreen.dart';
import 'package:revoo/home/admindashboard.dart';
import 'package:revoo/home/homepage.dart';
import 'package:revoo/piechart.dart';

import 'Employee/employeedash1stpg.dart';
import 'Employee/employee_homepage.dart';
import 'Employee/timepass.dart';
import 'Employee/watchdashboard.dart';
import 'HRMS_admin_Screen/adbranchpg2.dart';
import 'HRMS_admin_Screen/addbranchpg1.dart';
import 'Login/signup.dart';
import 'Login/yourapps.dart';
import 'ProjectManagement/projectDashboard.dart';
import 'Employee/dailyupdates.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key key= const Key('MyApp')}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: DBcrud2

        (),
      debugShowCheckedModeBanner: false,
    );
  }
}
