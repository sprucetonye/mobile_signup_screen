// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    // TextEditingController myController = TextEditingController();
    TextEditingController myController = TextEditingController();
    TextEditingController myFirstName = TextEditingController();
    TextEditingController myEmail = TextEditingController();
    TextEditingController myPassword = TextEditingController();

     String greetingMessage = " ";
// this side needs to be studied very well 
// knowing the fact that I maade it unique
    void greetUser() {
      setState() {
        greetingMessage = "Hello, ${myController.text}";
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        centerTitle: true,
        title: Row(
          children: [
            const Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: const Text(
                'Sign in',
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
              //const Text("greetingMessage"),
              Title(
                color: Colors.red,
                child: const Text(
                  'Create Account',
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
                    hintText: "First Name",
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
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
