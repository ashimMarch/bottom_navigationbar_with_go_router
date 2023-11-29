import 'package:bottom_navigationbar_with_go_router/navigation_router.dart';
import 'package:flutter/material.dart';

class MySignInPage extends StatelessWidget {
  const MySignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignIn"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.push(NavigationHelper.homePath);
              },
              child: const Text('Push Home Page'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Using push method of router enable us to push that page as standalone page instead of showing with Shell',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.go(NavigationHelper.homePath);
              },
              child: const Text('Go Home Page'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Instead if we use go method of router we will have the home page with the Shell',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.go(NavigationHelper.searchPath);
              },
              child: const Text('Go Search Page'),
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