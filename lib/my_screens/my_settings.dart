import 'package:bottom_navigationbar_with_go_router/navigation_router.dart';
import 'package:flutter/material.dart';

class MySettingsPage extends StatelessWidget {
  const MySettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.go(NavigationHelper.signInPath);
              },
              child: const Text('Go SignIn Page'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'THIS IS SETTINGS PAGE',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.push(NavigationHelper.signUpPath);
              },
              child: const Text('Push SignIn Page'),
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