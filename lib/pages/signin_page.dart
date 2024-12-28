// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController myController = TextEditingController();
    TextEditingController myFirstName = TextEditingController();
    TextEditingController myEmail = TextEditingController();
    TextEditingController myPassword = TextEditingController();


    void greetUser() {
      print(myController.text);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        centerTitle: true,
        title: Row(
          children: [
            const Text(
              "Don't have an account ?",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, '/signin');
              },
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Title(
                color: Colors.red,
                child: const Text(
                  'Access your account',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: myFirstName,
                decoration: const InputDecoration(
                    hintText: "Firstname",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                controller: myEmail,
                decoration: const InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                controller: myPassword,
                decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: greetUser,
                child: const Text('Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
