import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_april/views/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,
    required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String confirmedEmail = '123';
  String confirmedPassword = '123';

  @override
  dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
              return FractionallySizedBox(
                widthFactor: widthScreen > 500 ? 0.5 : 1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset('assets/lotties/home.json', height: 400.0),
                    TextField(
                      controller: controllerEmail,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      onEditingComplete: () => {setState(() {})},
                    ),
                    SizedBox(height: 10.0,
                    ),
                    TextField(
                      controller: controllerPassword,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      onEditingComplete: () => {setState(() {})},
                    ),
                    SizedBox(height: 20.0,
                    ),
                    FilledButton(
                      onPressed: () {
                        onLoginPressed ();
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40.0),
                      ),
                      child: Text(widget.title),
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (controllerEmail.text == confirmedEmail &&
        controllerPassword.text == confirmedPassword) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
          (route) => false,
      );
    }
  }
}
