import 'package:examen_gpl/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SigningScreen extends StatelessWidget {
  const SigningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                FlutterLogo(size: 100,),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                  CustomTextFormField(hintText: 'Usuario', suffixIcon: Icons.person,obscureText: false,),
                  SizedBox(height: 20),
                  CustomTextFormField(labelText: 'Contraseña',obscureText: true,),
                  ]
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                    onPressed: () {
                       FocusScope.of(context).requestFocus(FocusNode());
                       Navigator.pushNamed(context, 'listview');
                    },
                    child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(child: Text('Sign in'))
                            )
                )
            )
            ],
            ),
          ),
        ),
      ),
    );
  }
}

