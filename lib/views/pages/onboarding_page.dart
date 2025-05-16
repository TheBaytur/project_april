import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_april/data/constants.dart';
import 'package:project_april/views/pages/login_page.dart';



class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});




 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/home.json', height: 400.0),

                SizedBox(height: 20.0),
                  Text('Flutter Mapp',
                    style: KTextStyle.descriptionTealText,
                    textAlign: TextAlign.justify,
                  ),

                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(
                              title: 'Register Page');
                        },
                      ),
                  );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text('Next'),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
