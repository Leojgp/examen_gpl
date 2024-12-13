import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            FlutterLogo(size: 100,),
            SizedBox(height: 10,),
            FloatingActionButton(onPressed: (){},
            child: const Text('Sign in'),)
          ],
        ),
      ),
    );
  }
}