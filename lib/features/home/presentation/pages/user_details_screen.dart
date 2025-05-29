import 'package:flutter/material.dart';
import '../../domain/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
              radius: 60, backgroundImage: NetworkImage(user.imageUrl)),
          const SizedBox(height: 20),
          Text(user.name, style: Theme.of(context).textTheme.headlineSmall),
          Text(user.country, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
