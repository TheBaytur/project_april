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
            ContainerWidget(title: 'Basic Layout',
              description: 'This is a basic layout',
            ),
            ContainerWidget(title: 'Basic Layout',
              description: 'This is a basic layout',
            ),
            ContainerWidget(title: 'Basic Layout',
              description: 'This is a basic layout',
            ),

          ],
        ),
      ),
    );
  }
}
