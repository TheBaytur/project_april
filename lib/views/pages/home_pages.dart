import 'package:flutter/material.dart';
import 'package:project_april/data/constants.dart';
import 'package:project_april/views/widgets/container_widget.dart';
import 'package:project_april/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixedBug,
      KValue.testDemo,
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'LOGIN'),
            ...List.generate(list.length, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'Description',
              );
            }),
          ],
        ),
      ),
    );
  }
}
