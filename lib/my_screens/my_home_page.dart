import 'package:bottom_navigationbar_with_go_router/navigation_router.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.push(NavigationHelper.signUpPath);
              },
              child: const Text('Go to SignUp'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'THIS IS HOME PAGE',
                textAlign: TextAlign.center,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.push(NavigationHelper.signInPath);
              },
              child: const Text('Go to Signin'),
            ),
          ],
        ),
      ),
    );
  }
}