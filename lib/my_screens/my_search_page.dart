import 'package:bottom_navigationbar_with_go_router/navigation_router.dart';
import 'package:flutter/material.dart';

class MySearchPage extends StatelessWidget {
  const MySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.go(NavigationHelper.homePath);
                NavigationHelper.router.push(NavigationHelper.detailPath);
              },
              child: const Text('Go Home Tab -> Push Detail Page'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'THIS IS SEARCH PAGE',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.go(NavigationHelper.settingsPath);
              },
              child: const Text('Go Settings Tab'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Or instead we can launch the bottom navigation page(with shell) for different tab with only changing the path',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}