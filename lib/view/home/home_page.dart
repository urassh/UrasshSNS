import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to Urassh SNS",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Text("Login User info"),
          Text("username: "),
          Text("uid: "),
        ],
      ),
    );
  }
}