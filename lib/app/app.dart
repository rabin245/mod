
import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './modCalculator.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modder'),

        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                enabled: false,
                child: ListTile(

                  title: Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: buildSwitch(isDarkMode),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ModCalculator(),
    );
  }

  StatefulBuilder buildSwitch(bool isDarkMode) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Switch(
          value: isDarkMode,
          onChanged: (value) {
            if (value == false) {
              AdaptiveTheme.of(context).setLight();
            } else {
              AdaptiveTheme.of(context).setDark();
            }

            setState(() {
              isDarkMode = !isDarkMode;
            });

          },
        );
      },
    );
  }
}
