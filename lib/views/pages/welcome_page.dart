import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_april/views/pages/login_page.dart';
import 'package:project_april/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/welcome.json', height: 400.0),
                FittedBox(
                  child: Text('Flutter Mapp', style: TextStyle(
                    fontSize: 50.0,

                    fontWeight: FontWeight.bold,
                      letterSpacing: 50.0,
                  ),
                  ),
                ),
                SizedBox(height: 20.0,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Register',);
                        },
                    ),
                  );
                    },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                  child: Text('Get Started'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(title: 'Login',);
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
