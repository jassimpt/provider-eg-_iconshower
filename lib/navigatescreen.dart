import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_review/providers/icon_provider.dart';

class NavigateScreen extends StatelessWidget {
  const NavigateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<IconProvider>(builder: (context, value, child) {
              return value.selected == true
                  ? Icon(Icons.favorite)
                  : Icon(Icons.add);
            }),
          ],
        ),
      ),
    );
  }
}
