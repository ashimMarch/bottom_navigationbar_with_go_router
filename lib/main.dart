import 'package:bottom_navigationbar_with_go_router/navigation_router.dart';
import 'package:flutter/material.dart';

void main() {
  NavigationHelper.instance; // Initializing our navigation helper
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: NavigationHelper.router,
    );
  }
}
