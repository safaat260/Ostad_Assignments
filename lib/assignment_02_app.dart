import 'package:flutter/material.dart';
import 'package:ostad_assignments/assignment_02_home.dart';

class assignment_02_app extends StatefulWidget {
  const assignment_02_app({super.key});

  @override
  State<assignment_02_app> createState() => _assignment_02_appState();
}

class _assignment_02_appState extends State<assignment_02_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment_02",
      home: assignment_02_home(),
    );
  }
}
