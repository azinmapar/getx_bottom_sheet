import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Sheet'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // * Bottom sheet in getX
                  Get.bottomSheet(
                    // * like Row and Column but whenever no space left it goes to the next Row/Column
                    Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_incandescent_rounded),
                          title: const Text('Light Theme'),
                          onTap: () {
                            // * Change Theme
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_incandescent_outlined),
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  );
                },
                child: const Text('Change Theme'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
