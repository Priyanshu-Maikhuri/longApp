import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.add,
                color: Theme.of(context).colorScheme.primaryContainer,
                size: 40),
            onPressed: null,
          ),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.account_circle,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  size: 40))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
              child: Text(
            'LONG APP',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ))),
    );
  }
}
