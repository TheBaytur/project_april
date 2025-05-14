import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_april/views/widget_tree.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/welcome.json'),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                    },
                ),
              );
                },
              child: Text('Login'),
            ),
          ],
        ),
      )
    );
  }
}
