import 'package:doctriod/screens/AppointmentDetails.dart';
import 'package:doctriod/screens/ButtomNavigationBar.dart';
import 'package:doctriod/screens/Categories.dart';
import 'package:doctriod/screens/DoctorProfile.dart';
import 'package:doctriod/screens/Doctors.dart';
import 'package:doctriod/screens/FindDoctor.dart';
import 'package:doctriod/screens/MapScreen.dart';
import 'package:doctriod/screens/SignIn.dart';
import 'package:doctriod/screens/insurance.dart';
import 'package:flutter/material.dart';
import 'screens/IntroductionScreen.dart';
import 'screens/SignUp.dart';

void main() {
  runApp(doctroid());
}

class doctroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MapScreen.id,
      routes: {
        mainPage.id: (context) => mainPage(),
        signin.id: (context) => signin(),
        signup.id: (context) => signup(),
        MyStatefulWidget.id: (context) => MyStatefulWidget(),
        doctors.id: (context) => doctors(),
        DoctorProfile.id: (context) => DoctorProfile(),
        FingDoctor.id: (context) => FingDoctor(),
        AppointmentDetailsScreen.id: (context) => AppointmentDetailsScreen(),
        InsuranceScreen.id: (context) => InsuranceScreen(),
        MapScreen.id: (context) => MapScreen()
      },
    );
  }
}
