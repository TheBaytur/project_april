import 'package:flutter/material.dart';
import 'package:project_april/views/widgets/container_widget.dart';
import 'package:project_april/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key,
    });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'LOGIN',
            ),
            ...List.generate(10, (index) => ContainerWidget(
              title: 'Title $index',
              description: 'Description $index',
            ))



          ],
        ),
      ),
    );
  }
}
