import 'package:first/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './modCalculator.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  title: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Dark Mode',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  trailing: buildSwitch(),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ModCalculator(),
    );
  }

  StatefulBuilder buildSwitch() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Switch(
          value: context.read<ThemeProvider>().isDarkMode,
          // backward compatible code
          // value: Provider.of<ThemeProvider>(context).isDarkMode,
          onChanged: (value) {
            context.read<ThemeProvider>().toggle(value);
            // backward compatible code
            // Provider.of<ThemeProvider>(context, listen: false)
            //     .toggle(value);
            setState(() {});
          },
        );
      },
    );
  }
}
