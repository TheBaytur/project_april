import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


import '../../data/classes/activity_class.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => CoursePageState();
}

class CoursePageState extends State<CoursePage> {
  Future <Activity> ? _activityFuture;
  bool isFirst = true;// <1>
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      return Activity.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              isFirst = !isFirst;
            });



          }, icon: Icon(Icons.switch_access_shortcut),
          ),
        ],
      ),

      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          Widget widget;

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            widget = Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: AnimatedCrossFade(
                  firstChild: Center(
                    child: Image.asset('assets/images/fridge_logo.png'),
                  ),
                  secondChild: Center(
                    child: Image.asset('assets/images/bg.jpg'),
                  ),
                  crossFadeState: isFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(milliseconds: 1000),
                ),
              ),
            );
          } else {
            widget = Center(child: Text('Error'));
          }
          return widget = widget;
        },
      ),
    );
  }
}
