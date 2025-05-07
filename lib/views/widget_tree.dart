import 'package:flutter/material.dart';
import 'package:project_april/data/notifiers.dart';
import 'package:project_april/views/pages/home_pages.dart';
import 'package:project_april/views/pages/profile_page.dart';
import 'package:project_april/views/pages/search_page.dart';
import 'package:project_april/views/widgets/navbar_widgets.dart';

List<Widget> pages = [
  HomePage(),
  SearchPage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'),
      ),
      body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
        return pages.elementAt(selectedPage);
      },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
