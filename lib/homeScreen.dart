import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_review/navigatescreen.dart';
import 'package:task_review/providers/icon_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Provider.of<IconProvider>(context, listen: false)
                      .favselector();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NavigateScreen(),
                  ));
                },
                child: Icon(Icons.favorite)),
            ElevatedButton(
                onPressed: () {
                  Provider.of<IconProvider>(context, listen: false).selector();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NavigateScreen(),
                  ));
                },
                child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
