import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 260.0),
          child: Column(
            children: [
              FlutterLogo(
                size: 150,
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signing');
                  },
                  child: SizedBox(
                      width: 120,
                      height: 50,
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text('Sign in',style: TextStyle(fontSize: 20),))))),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: SizedBox(
                      width: 120,
                      height: 50,
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text('Sign out',style: TextStyle(fontSize: 20))))))
            ],
          ),
        ),
      ),
    );
  }
}
