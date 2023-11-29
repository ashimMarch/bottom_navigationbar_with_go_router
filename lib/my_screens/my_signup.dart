import 'package:bottom_navigationbar_with_go_router/navigation_router.dart';
import 'package:flutter/material.dart';

class MySignUpPage extends StatelessWidget {
  const MySignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.push(NavigationHelper.signInPath);
              },
              child: const Text('Push To SignIn'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Using push method of router enable us to go back functionality',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                NavigationHelper.router.go(NavigationHelper.signInPath);
              },
              child: const Text('Go To SignIn'),
            ),
          ],
        ),
      ),
    );
  }
}