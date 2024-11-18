import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../themes/theme_a.dart';
import '../themes/theme_b.dart';
import '../themes/theme_c.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Select Theme:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text("Theme A"),
            onTap: () {
              themeProvider.setTheme(themeA);
              themeProvider.setColor(Colors.blue);
            },
          ),
          ListTile(
            title: const Text("Theme B"),
            onTap: () {
              themeProvider.setTheme(themeB);
              themeProvider.setColor(Colors.red);
            },
          ),
          ListTile(
            title: const Text("Theme C"),
            onTap: () {
              themeProvider.setTheme(themeC);
              themeProvider.setColor(Colors.green);
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Select Font:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text("Lobster"),
            onTap: () {
              themeProvider.setFont('Lobster');
            },
          ),
          ListTile(
            title: const Text("Roboto"),
            onTap: () {
              themeProvider.setFont('Roboto');
            },
          ),
          ListTile(
            title: const Text("Open Sans"),
            onTap: () {
              themeProvider.setFont('OpenSans');
            },
          ),
        ],
      ),
    );
  }
}
