import 'package:flutter/material.dart';
import 'package:project_april/data/constants.dart';
import 'package:project_april/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(title: 'Flutter Mapp',),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Basic layout', style: KTextStyle.titleTealText),

                    Text(
                      'The Description of this',
                      style: KTextStyle.descriptionTealText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
