import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_review/homeScreen.dart';
import 'package:task_review/providers/icon_provider.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IconProvider(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
