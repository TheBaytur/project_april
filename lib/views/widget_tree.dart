import 'package:flutter/material.dart';
import 'package:project_april/data/constants.dart';
import 'package:project_april/data/notifiers.dart';
import 'package:project_april/views/pages/home_pages.dart';
import 'package:project_april/views/pages/profile_page.dart';
import 'package:project_april/views/pages/settings_page.dart';
import 'package:project_april/views/widgets/navbar_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        actions: [
          IconButton(
            onPressed: () async {
              isDarkMode.value = !isDarkMode.value;
              final SharedPreferences prefs =
              await SharedPreferences.getInstance();
              await prefs.setBool(KConstants.themeModeKey, isDarkMode.value);

            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkMode,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage(title: 'Settings Page');
                  },
                ),
              ); // Navigate to the settings page using the Navigator.
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
