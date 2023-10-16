import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:longapp/Resources/valuesManager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void addProject() {}

  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home'),
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/images/menu.svg',
              height: 40,
              color: theme.colorScheme.onSecondaryContainer,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_outlined,
                  color: theme.colorScheme.onPrimaryContainer,
                  size: 38),
              onPressed: addProject,
            ),
            Container(
              margin: const EdgeInsets.only(right: AppInsets.e8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: theme.colorScheme.onBackground, // Border color
                    width: 1, // Border width
                  ),
                ),
                child: ClipOval(
                  child: CircleAvatar(
                      backgroundColor: theme.colorScheme.onSecondaryContainer,
                      child: Image.asset('assets/images/profile.jpeg',
                          fit: BoxFit.cover)),
                ))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(AppInsets.e16),
            child: Center(
                child: TextButton.icon(
                    icon: Icon(
                      Icons.add_outlined,
                      color: theme.colorScheme.onPrimaryContainer, //Colors.grey,
                      size: 50,
                    ),
                    label: Text('Create a project', style: theme.textTheme.headlineSmall,),
                    onPressed: addProject))));
  }
}
