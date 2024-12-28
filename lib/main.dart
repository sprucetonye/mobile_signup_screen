import 'package:flutter/material.dart';
import 'package:taskdone/pages/signin_page.dart';
import 'package:taskdone/pages/todo_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoPage(),
      routes: {
        '/signin' : (context) => const SigninPage(),
        '/sigup' : (context) => const TodoPage(),
      },
    );
  }
}
