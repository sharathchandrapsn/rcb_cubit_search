import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithDrawer extends StatelessWidget {
  final Widget child;
  final String? appbarTitle;
  const ScaffoldWithDrawer({super.key, required this.child, this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle ?? "")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                context.go('/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                context.go('/settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                context.go('/login');
              },
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
